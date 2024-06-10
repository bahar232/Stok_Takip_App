import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quantumapp/core/data/remote/dtos/auth_dto/auth_dto.dart';
import 'package:quantumapp/core/data/remote/dtos/sign_up_dto.dart';
import 'package:quantumapp/core/domain/contants/k_app.dart';
import 'package:quantumapp/core/domain/remote/auth_remote_service.dart';
import 'package:quantumapp/core/util/api_helper.dart';
import 'package:quantumapp/core/util/resource.dart';

import 'dtos/login_dto/login_dto.dart';

class AuthRemoteServiceImpl extends AuthRemoteService{
  final commonUrl = "${K.api.apiServiceHostUrl}/${K.api.authPath}";

  @override
  Future<Resource<AuthDto>> login(LoginDto loginDto)async{
    final url = "$commonUrl/login";
    return await ApiHelper.call(
      performResponse: (headers)async{
        return await http.post(
            Uri.parse(url),
            headers: headers,
            body: jsonEncode(loginDto.toJson())
        );
      },
      onSuccessResponse: (response){
        final decoded = jsonDecode(response.body);
        final userDto = AuthDto.fromJson(decoded);
        return ResourceSuccess(userDto);
      },
      onError: (error){
        return ResourceError(error);
      }
    );
  }

  @override
  Future<Resource<AuthDto>> signUp(SignUpDto signUpDto) async{
    final url = "$commonUrl/signUp";
    return await ApiHelper.call(
        performResponse: (headers)async{
          return await http.post(
              Uri.parse(url),
              headers: headers,
              body: jsonEncode(signUpDto.toJson())
          );
        },
        onSuccessResponse: (response){
          final decoded = jsonDecode(response.body);
          final userDto = AuthDto.fromJson(decoded);
          return ResourceSuccess(userDto);
        },
        onError: (error){
          return ResourceError(error);
        }
    );
  }
}