import 'package:balanced_meal/features/details/presentation/views/details_view.dart';
import 'package:balanced_meal/features/my_order/presentation/views/order_cart_view.dart';
import 'package:balanced_meal/features/my_order/presentation/views/order_view.dart';
import 'package:balanced_meal/features/welcome/presentation/views/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kDetailsView = "/kdetailsview";
  static const kOrderView = "/korderview";
  static const kOrderCartView = "/kordercartview";

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const WelcomeView();
      },
    ),
    GoRoute(
      path: kDetailsView,
      builder: (BuildContext context, GoRouterState state) {
        return const DetailsView();
      },
    ),
    GoRoute(
      path: kOrderView,
      builder: (BuildContext context, GoRouterState state) {
        return const OrderView();
      },
    ),
    GoRoute(
      path: kOrderCartView,
      builder: (BuildContext context, GoRouterState state) {
        return const OrderCartView();
      },
    ),
  ]);
}
