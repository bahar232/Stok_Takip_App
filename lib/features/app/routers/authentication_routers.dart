import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quantumapp/features/authentication/login/presentation/login_page.dart';

part 'authentication_routers.g.dart';


@TypedGoRoute<LoginRoute>(
    path: "/login"
)
class LoginRoute extends GoRouteData{
  LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LoginPage();
  }
}