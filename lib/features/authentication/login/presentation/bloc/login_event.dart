
abstract class ILoginEvent {}

class LoginEventLogin extends ILoginEvent{
  final String password;
  final String username;
  LoginEventLogin({required this.username, required this.password});
}

class LoginEventClearMessage extends ILoginEvent{}
