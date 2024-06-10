
import 'package:quantumapp/core/data/remote/dtos/auth_dto/auth_dto.dart';
import 'package:quantumapp/core/data/remote/dtos/login_dto/login_dto.dart';
import 'package:quantumapp/core/data/remote/dtos/sign_up_dto.dart';
import 'package:quantumapp/core/util/resource.dart';

abstract class AuthRemoteService{

  Future<Resource<AuthDto>> login(LoginDto loginDto);

  Future<Resource<AuthDto>> signUp(SignUpDto signUpDto);
}