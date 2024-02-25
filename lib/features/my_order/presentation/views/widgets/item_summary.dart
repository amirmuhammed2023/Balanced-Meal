import 'package:balanced_meal/core/models/food_model.dart';
import 'package:balanced_meal/core/utils/app_styles.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/custom_counter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ItemSummary extends StatelessWidget {
  const ItemSummary({super.key, required this.shoppingfood});
  final FoodModel shoppingfood;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.22,
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: shoppingfood.imagelink,
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    shoppingfood.text,
                    style: AppStyles.kTextStyleNormal16,
                  ),
                  Text(
                    "${shoppingfood.calories} Cal",
                    style: AppStyles.kTextStyleNormal14,
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "\$12",
                    style: AppStyles.kTextStyleMeduim16,
                  ),
                  CustomCounter(myfoodelement: shoppingfood),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
