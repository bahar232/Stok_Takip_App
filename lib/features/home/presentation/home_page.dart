import 'package:flutter/material.dart';
import 'package:quantumapp/core/features/app_auth_handler/auth_navigate_listener.dart';
import 'package:quantumapp/core/presentation/components/menu_content_pan.dart';
import 'package:quantumapp/features/home/presentation/components/profile_info.dart';
import 'package:quantumapp/features/home/presentation/sections/menu_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthNavigateListener(
      child: Scaffold(
        body: SafeArea(
          child: MenuContentPan(
            menuItems: getMenuItems(context),
            child: const Column(
              children: [
                ProfileInfo()
              ],
            )
          ),
        ),
      ),
    );
  }
}



