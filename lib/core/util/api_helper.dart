

import 'dart:convert';

import 'package:http/http.dart';
import 'package:quantumapp/core/data/manager/auth_manager_impl.dart';
import 'package:quantumapp/core/util/resource.dart';

class ApiHelper{

  static Map<String, String> _getHeaders({
    String? token,
    required bool useAuthorize
  }){
    final result = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
    };
    if(useAuthorize && token != null){
      result['Authorization'] = 'Bearer $token';
    }
    return result;
  }

  static Future<T> callWithAuthorize<T, IResponse extends BaseResponse>({
    required Future<IResponse> Function(Map<String, String> headers) performResponse,
    required T Function(IResponse) onSuccessResponse,
    required T Function(String error) onError
  })async{
    return _call(
      performResponse: performResponse,
      onSuccessResponse: onSuccessResponse,
      onError: onError,
      useAuthorize: true,
    );
  }

  static Future<T> call<T,IResponse extends BaseResponse>({
    required Future<IResponse> Function(Map<String, String> headers) performResponse,
    required T Function(IResponse) onSuccessResponse,
    required T Function(String error) onError
  })async {
    return _call(
      performResponse: performResponse,
      onSuccessResponse: onSuccessResponse,
      onError: onError,
      useAuthorize: false,
    );
  }


  static Future<T> _call<T,IResponse extends BaseResponse>({
    required Future<IResponse> Function(Map<String, String> headers) performResponse,
    required T Function(IResponse) onSuccessResponse,
    required T Function(String error) onError,
    required bool useAuthorize
  })async {
    try{
      final authManager = AuthManager.instance;
      final token = authManager.currentAuth?.token;
      if(useAuthorize && token == null){
        await authManager.invalidateSession();
        return onError("oturumun süresi doldu");
      }
      final header = _getHeaders(token: token, useAuthorize: useAuthorize);
      final response = await performResponse(header);
      if(response.statusCode >= 200 && response.statusCode < 300){
        return onSuccessResponse(response);
      }
      else if(response.statusCode == 401 && useAuthorize){
        await authManager.invalidateSession();
        return onError("oturumun süresi doldu");
      } else{
        try{
          if(response is Response){
            final body = jsonDecode(response.body);
            if(body is String){
              return onError(body);
            }
            final errors = body["errors"] as Map<String,dynamic>;
            final error = errors[errors.keys.first] as List<dynamic>;
            return onError(error[0]);
          }
          return onError("Bir şeyler yanlış gitti");
        }catch(e){
          return onError("Bir şeyler yanlış gitti");
        }
      }
    }catch(e){
      return onError(e.toString());
    }
  }

}