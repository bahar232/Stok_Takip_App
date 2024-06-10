import 'package:flutter/material.dart';
import 'package:quantumapp/core/features/app_auth_handler/auth_navigate_listener.dart';

class AppAuthHandlerPage extends StatelessWidget {
  const AppAuthHandlerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const AuthNavigateListener(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
