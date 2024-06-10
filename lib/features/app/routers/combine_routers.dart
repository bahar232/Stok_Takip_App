

import 'package:go_router/go_router.dart';

import 'app_routers.dart' as app_routers;
import 'authentication_routers.dart' as auth_routers;

List<RouteBase> get $combinedAppRoutes => [
  ...auth_routers.$appRoutes,
  ...app_routers.$appRoutes
];