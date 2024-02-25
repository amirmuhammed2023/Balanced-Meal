import 'package:balanced_meal/features/my_order/presentation/views/widgets/button_cart_status.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/calories_calculation.dart';
import 'package:flutter/material.dart';

class ConfirmSection extends StatelessWidget {
  const ConfirmSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 16),
      child: Column(
        children: [
          CaloriesCalculation(),
          ButtonCartStatus(),
        ],
      ),
    );
  }
}
