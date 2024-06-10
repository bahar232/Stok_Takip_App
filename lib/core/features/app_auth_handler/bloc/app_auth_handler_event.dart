
abstract class IAppAuthHandlerEvent {}

class AppAuthEventClearNavigateToLogin extends IAppAuthHandlerEvent{}

class AppAuthEventClearNavigateToHome extends IAppAuthHandlerEvent{}

class AppAuthEventClearSessionDia extends IAppAuthHandlerEvent{
  final bool navigateToLogin;
  AppAuthEventClearSessionDia({required this.navigateToLogin});
}

class AppAuthEventControlListenChanges extends IAppAuthHandlerEvent{}