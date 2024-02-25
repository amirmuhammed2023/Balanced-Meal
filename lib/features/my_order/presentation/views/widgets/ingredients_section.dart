import 'package:balanced_meal/core/utils/app_styles.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/custom_row_carbs.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/custom_row_meats.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/custom_row_vegetables.dart';
import 'package:flutter/material.dart';

class IngredientsSection extends StatelessWidget {
  const IngredientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Vegetables",
            style: AppStyles.kTextStyleMeduim16.copyWith(fontSize: 20),
          ),
          const SizedBox(height: 16),
          const CustomRowVegetables(),
          const SizedBox(height: 20),
          Text(
            "Meats",
            style: AppStyles.kTextStyleMeduim16.copyWith(fontSize: 20),
          ),
          const SizedBox(height: 16),
          const CustomRowMeats(),
          const SizedBox(height: 20),
          Text(
            "Carbs",
            style: AppStyles.kTextStyleMeduim16.copyWith(fontSize: 20),
          ),
          const SizedBox(height: 16),
          const CustomRowCarbs(),
        ],
      ),
    );
  }
}
