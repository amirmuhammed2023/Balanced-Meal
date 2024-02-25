import 'package:balanced_meal/features/my_order/presentation/views/widgets/order_cart_view_body.dart';
import 'package:flutter/material.dart';

class OrderCartView extends StatelessWidget {
  const OrderCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OrderCartViewBody(),
      ),
    );
  }
}
