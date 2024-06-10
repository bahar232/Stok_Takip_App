import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quantumapp/core/data/manager/auth_manager_impl.dart';
import 'package:quantumapp/features/app/routers/combine_routers.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueAccent,
      ),
      title: 'Quantum App',
      debugShowCheckedModeBanner: false,
    );
  }
}


final _router = GoRouter(
    initialLocation: "/",
    routes: $combinedAppRoutes
);