import 'package:balanced_meal/core/utils/app_colors.dart';
import 'package:balanced_meal/core/utils/app_styles.dart';
import 'package:balanced_meal/features/my_order/presentation/view_model/Provider/my_order_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CaloriesCalculation extends StatelessWidget {
  const CaloriesCalculation({super.key});

  @override
  Widget build(BuildContext context) {
    final mycartinstance = Provider.of<MyOrderProvider>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Cal",
              style: AppStyles.kTextStyleNormal16,
            ),
            Text(
              "${mycartinstance.calories} Cal out of ${mycartinstance.allcaloriesneed.round()}",
              style: AppStyles.kTextStyleNormal14,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Price",
                style: AppStyles.kTextStyleNormal16,
              ),
              Text(
                "\$ ${mycartinstance.price}",
                style: AppStyles.kTextStyleMeduim16
                    .copyWith(color: AppColors.kPrimaryColor),
              )
            ],
          ),
        )
      ],
    );
  }
}
