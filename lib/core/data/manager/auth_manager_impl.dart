import 'dart:convert';

import 'package:quantumapp/core/data/mapper/login_mapper.dart';
import 'package:quantumapp/core/data/mapper/sign_up_mapper.dart';
import 'package:quantumapp/core/data/mapper/user_mapper.dart';
import 'package:quantumapp/core/domain/contants/k_pref.dart';
import 'package:quantumapp/core/domain/enums/auth_status_enum.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/core/domain/model/auth/auth.dart';
import 'package:quantumapp/core/domain/model/auth_status/auth_status.dart';
import 'package:quantumapp/core/domain/model/login_model/login_model.dart';
import 'package:quantumapp/core/domain/model/sign_up_model/sign_up_model.dart';
import 'package:quantumapp/core/domain/preferences/app_preferences.dart';
import 'package:quantumapp/core/domain/remote/auth_remote_service.dart';
import 'package:quantumapp/core/util/resource.dart';
import 'package:rxdart/rxdart.dart';

class AuthManager {
  late AppPreferences _appPreferences;
  late AuthRemoteService _authRemoteService;

  final BehaviorSubject<AuthStatusEnum> _authStatusController =
      BehaviorSubject();
  final BehaviorSubject<Auth?> _authController = BehaviorSubject();

  ValueStream<Auth?> get authSubs => _authController.shareValue();

  ValueStream<AuthStatus> get authCombinedStatus =>
      Rx.combineLatest2(_authStatusController, _authController, (status, auth) {
        return AuthStatus(statusEnum: status, auth: auth);
      }).shareValue();

  static AuthManager instance = AuthManager._();

  AuthManager._();

  factory AuthManager.setParams(
      {required AppPreferences appPreferences,
      required AuthRemoteService authRemoteService}) {
    instance._appPreferences = appPreferences;
    instance._authRemoteService = authRemoteService;
    instance._authStatusController.value = AuthStatusEnum.loggedOut;
    instance._readAndSetAuth();
    return instance;
  }

  Auth? get currentAuth => _authController.value;

  Future<T?> getSafeAuthAsync<T>(
      {required Future<T> Function(Auth auth) onAuth,
      Future<T> Function()? onError}) async {
    final current = currentAuth;
    if (current != null) {
      return await onAuth(current);
    } else {
      return await onError?.call();
    }
  }

  Future<T> getSafeAuthAsyncWithDefault<T>(
      {required Future<T> Function(Auth auth) onAuth,
      Future<T> Function()? onError,
      required T defaultValue}) async {
    return await getSafeAuthAsync(onAuth: onAuth, onError: onError) ??
        defaultValue;
  }

  T? getSafeAuth<T>(
      {required T Function(Auth auth) onAuth, T Function()? onError}) {
    final current = currentAuth;
    if (current != null) {
      return onAuth(current);
    } else {
      return onError?.call();
    }
  }

  Future<Resource<Auth>> login(LoginModel loginModel) async {
    final response = await _authRemoteService.login(loginModel.toLoginDto());

    return response.handleForResourceReturnType(onSuccess: (data) {
      final auth = data.toAuth();
      _saveAuth(auth);
      _setAuth(auth);
      return ResourceSuccess(auth);
    });
  }

  Future<Resource<Auth>> signUp(SignUpModel signUpModel) async {
    final response = await _authRemoteService.signUp(signUpModel.toSignUpDto());

    return response.handleForResourceReturnType(onSuccess: (data) {
      final auth = data.toAuth();
      _saveAuth(auth);
      _setAuth(auth);
      return ResourceSuccess(auth);
    });
  }

  Future<void> logOut() async {
    await _removeAuthData();
    _authStatusController.value = AuthStatusEnum.loggedOut;
  }

  Future<void> invalidateSession() async {
    await _removeAuthData();
    _authStatusController.value = AuthStatusEnum.invalidated;
  }

  Future<void> _removeAuthData() async {
    _setAuth(null);
    await _appPreferences.setItem(KPref.currentAuth, "");
  }

  void _setAuth(Auth? auth) {
    _authController.value = auth;
    if (auth != null) {
      _authStatusController.value = AuthStatusEnum.loggedIn;
    }
  }

  Future<void> _saveAuth(Auth auth) async {
    final jsonAuth = auth.toJson();
    final encodedAuth = jsonEncode(jsonAuth);
    await _appPreferences.setItem(KPref.currentAuth, encodedAuth);
  }

  void _readAndSetAuth() {
    try {
      final authStr = _appPreferences.getItem(KPref.currentAuth);
      final decodedAuth = jsonDecode(authStr);
      final auth = Auth.fromJson(decodedAuth);
      _setAuth(auth);
    } catch (e) {
      _setAuth(null);
    }
  }
}
