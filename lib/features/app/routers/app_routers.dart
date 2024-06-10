
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quantumapp/core/features/app_auth_handler/app_auth_handler_page.dart';
import 'package:quantumapp/features/customers/customer_detail/presentation/customer_detail_page.dart';
import 'package:quantumapp/features/customers/customer_movements/customer_movements_page.dart';
import 'package:quantumapp/features/customers/show_customers/presentation/customer_page.dart';
import 'package:quantumapp/features/graph_test/presentation/graph_page.dart';
import 'package:quantumapp/features/home/presentation/home_page.dart';
import 'package:quantumapp/features/invoices/add_invoice/presentation/add_invoice_page.dart';
import 'package:quantumapp/features/invoices/detail_invoice/detail_invoice_page.dart';
import 'package:quantumapp/features/invoices/show_invoices/presentation/show_invoices_page.dart';
import 'package:quantumapp/features/materials/show_materials/presentation/show_materials_page.dart';

import '../../authentication/sign_up/presentation/sign_up_page.dart';

part 'app_routers.g.dart';


@TypedGoRoute<AppAuthHandlerRoute>(
    path: "/"
)
class AppAuthHandlerRoute extends GoRouteData{
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AppAuthHandlerPage();
  }
}

@TypedGoRoute<HomeRoute>(
    path: "/home"
)
class HomeRoute extends GoRouteData{
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<CustomerRoute>(
    path: "/customers"
)
class CustomerRoute extends GoRouteData{
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CustomerPage(key: state.pageKey,);
  }
}


@TypedGoRoute<CustomerDetailRoute>(
    path: "/customerDetail/:id"
)
class CustomerDetailRoute extends GoRouteData{

  final int id;
  CustomerDetailRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CustomerDetailPage(key: state.pageKey,customerId: id,);
  }
}

@TypedGoRoute<CustomerMovementsRoute>(
    path: "/customerMovements/:id"
)
class CustomerMovementsRoute extends GoRouteData{

  final int id;
  CustomerMovementsRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CustomerMovementsPage(key: state.pageKey,customerId: id,);
  }
}

@TypedGoRoute<GraphRoute>(
    path: "/graphs"
)
class GraphRoute extends GoRouteData{
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return GraphPage(key: state.pageKey,);
  }
}


@TypedGoRoute<ShowMaterialsRoute>(
    path: "/showmaterials"
)
class ShowMaterialsRoute extends GoRouteData{
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ShowMaterialsPage();
  }
}


@TypedGoRoute<AddInvoiceRoute>(
    path: "/invoice/add"
)
class AddInvoiceRoute extends GoRouteData{
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AddInvoicePage();
  }
}

@TypedGoRoute<ShowInvoicesRoute>(
    path: "/invoice/showAll"
)
class ShowInvoicesRoute extends GoRouteData{
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ShowInvoicesPage();
  }
}


@TypedGoRoute<DetailInvoiceRoute>(
    path: "/invoice/details/:invoiceId"
)
class DetailInvoiceRoute extends GoRouteData{

  final int invoiceId;

  DetailInvoiceRoute({required this.invoiceId});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailInvoicePage(invoiceId: invoiceId);
  }
}



@TypedGoRoute<SignInRoute>(
    path: "/signIn"
)
class SignInRoute extends GoRouteData{
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SignUpPage();
  }
}
