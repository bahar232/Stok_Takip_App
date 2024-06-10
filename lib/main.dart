import 'package:flutter/material.dart';
import 'package:quantumapp/core/data/manager/auth_manager_impl.dart';
import 'package:quantumapp/core/data/preferences/app_preferences_impl.dart';
import 'package:quantumapp/core/data/remote/auth_remote_service_impl.dart';
import 'package:quantumapp/core/data/services/connectivity_service_impl.dart';
import 'package:quantumapp/core/domain/extensions/resource_extension.dart';
import 'package:quantumapp/features/app/my_app.dart';
import 'package:quantumapp/features/app/my_app_providers.dart';
import 'package:quantumapp/features/materials/shared/data/remote/dtos/material_image_save_dto/material_image_save.dart';
import 'package:quantumapp/features/materials/shared/data/remote/material_image_api_service_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  final appPreferences = AppPreferencesImpl(preferences: sharedPreferences);
  final authRemoteService = AuthRemoteServiceImpl();

  AuthManager.setParams(
    appPreferences: appPreferences,
    authRemoteService: authRemoteService,
  );


  runApp(MyAppProviders(
    sharedPreferences: sharedPreferences,
    child: const MyApp(),
  ));
}