import 'package:balanced_meal/core/utils/app_colors.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/button_order_status.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/calories_calculation.dart';
import 'package:flutter/material.dart';

class PlaceOrderSection extends StatelessWidget {
  const PlaceOrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.24,
      color: AppColors.kWhiteColor,
      child: const Padding(
        padding: EdgeInsets.only(top: 16, left: 24, right: 24, bottom: 24),
        child: Column(
          children: [
            CaloriesCalculation(),
            SizedBox(height: 8),
            ButtonOrderStatus(),
          ],
        ),
      ),
    );
  }
}
