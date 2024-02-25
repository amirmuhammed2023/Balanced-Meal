import 'package:balanced_meal/core/utils/app_colors.dart';
import 'package:balanced_meal/features/my_order/presentation/view_model/Provider/firstore_ingredients_provider.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomRowMeats extends StatelessWidget {
  const CustomRowMeats({super.key});

  @override
  Widget build(BuildContext context) {
    final ingredientsinstance =
        Provider.of<FireStoreIngredientsProvider>(context);
    if (ingredientsinstance.isloading == true) {
      return SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.29,
        child: const Center(
          child: CircularProgressIndicator(
            color: AppColors.kPrimaryColor,
          ),
        ),
      );
    }
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.29,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: ingredientsinstance.itemsmet
              .map(
                (listitem) => CustomItem(
                  myfoodmodel: listitem,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
