// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routers.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appAuthHandlerRoute,
      $homeRoute,
      $customerRoute,
      $customerDetailRoute,
      $customerMovementsRoute,
      $graphRoute,
      $showMaterialsRoute,
      $addInvoiceRoute,
      $showInvoicesRoute,
      $detailInvoiceRoute,
      $signInRoute,
    ];

RouteBase get $appAuthHandlerRoute => GoRouteData.$route(
      path: '/',
      factory: $AppAuthHandlerRouteExtension._fromState,
    );

extension $AppAuthHandlerRouteExtension on AppAuthHandlerRoute {
  static AppAuthHandlerRoute _fromState(GoRouterState state) =>
      AppAuthHandlerRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/home',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $customerRoute => GoRouteData.$route(
      path: '/customers',
      factory: $CustomerRouteExtension._fromState,
    );

extension $CustomerRouteExtension on CustomerRoute {
  static CustomerRoute _fromState(GoRouterState state) => CustomerRoute();

  String get location => GoRouteData.$location(
        '/customers',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $customerDetailRoute => GoRouteData.$route(
      path: '/customerDetail/:id',
      factory: $CustomerDetailRouteExtension._fromState,
    );

extension $CustomerDetailRouteExtension on CustomerDetailRoute {
  static CustomerDetailRoute _fromState(GoRouterState state) =>
      CustomerDetailRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/customerDetail/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $customerMovementsRoute => GoRouteData.$route(
      path: '/customerMovements/:id',
      factory: $CustomerMovementsRouteExtension._fromState,
    );

extension $CustomerMovementsRouteExtension on CustomerMovementsRoute {
  static CustomerMovementsRoute _fromState(GoRouterState state) =>
      CustomerMovementsRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/customerMovements/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $graphRoute => GoRouteData.$route(
      path: '/graphs',
      factory: $GraphRouteExtension._fromState,
    );

extension $GraphRouteExtension on GraphRoute {
  static GraphRoute _fromState(GoRouterState state) => GraphRoute();

  String get location => GoRouteData.$location(
        '/graphs',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $showMaterialsRoute => GoRouteData.$route(
      path: '/showmaterials',
      factory: $ShowMaterialsRouteExtension._fromState,
    );

extension $ShowMaterialsRouteExtension on ShowMaterialsRoute {
  static ShowMaterialsRoute _fromState(GoRouterState state) =>
      ShowMaterialsRoute();

  String get location => GoRouteData.$location(
        '/showmaterials',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $addInvoiceRoute => GoRouteData.$route(
      path: '/invoice/add',
      factory: $AddInvoiceRouteExtension._fromState,
    );

extension $AddInvoiceRouteExtension on AddInvoiceRoute {
  static AddInvoiceRoute _fromState(GoRouterState state) => AddInvoiceRoute();

  String get location => GoRouteData.$location(
        '/invoice/add',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $showInvoicesRoute => GoRouteData.$route(
      path: '/invoice/showAll',
      factory: $ShowInvoicesRouteExtension._fromState,
    );

extension $ShowInvoicesRouteExtension on ShowInvoicesRoute {
  static ShowInvoicesRoute _fromState(GoRouterState state) =>
      ShowInvoicesRoute();

  String get location => GoRouteData.$location(
        '/invoice/showAll',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $detailInvoiceRoute => GoRouteData.$route(
      path: '/invoice/details/:invoiceId',
      factory: $DetailInvoiceRouteExtension._fromState,
    );

extension $DetailInvoiceRouteExtension on DetailInvoiceRoute {
  static DetailInvoiceRoute _fromState(GoRouterState state) =>
      DetailInvoiceRoute(
        invoiceId: int.parse(state.pathParameters['invoiceId']!),
      );

  String get location => GoRouteData.$location(
        '/invoice/details/${Uri.encodeComponent(invoiceId.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signInRoute => GoRouteData.$route(
      path: '/signIn',
      factory: $SignInRouteExtension._fromState,
    );

extension $SignInRouteExtension on SignInRoute {
  static SignInRoute _fromState(GoRouterState state) => SignInRoute();

  String get location => GoRouteData.$location(
        '/signIn',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
