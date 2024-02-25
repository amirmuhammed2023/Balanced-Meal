import 'package:balanced_meal/core/models/details_model.dart';
import 'package:balanced_meal/core/utils/app_routes.dart';
import 'package:balanced_meal/core/utils/functions/available_button_details.dart';
import 'package:balanced_meal/core/widgets/custom_elevated_button.dart';
import 'package:balanced_meal/features/my_order/presentation/view_model/Provider/firstore_ingredients_provider.dart';
import 'package:balanced_meal/features/my_order/presentation/view_model/Provider/my_order_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ButtonStatus extends StatelessWidget {
  const ButtonStatus({super.key, required this.details1});
  final DetailsModel details1;
  @override
  Widget build(BuildContext context) {
    final mycartinstance = Provider.of<MyOrderProvider>(context);
    final ingredientinstance =
        Provider.of<FireStoreIngredientsProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: availablebuttondetails(details: details1) == false
            ? const CustomElevatedButtondisabled(text: "Next")
            : CustomElevatedButton(
                onPressed: () {
                  ingredientinstance.fetchingredients();
                  mycartinstance.fetchallcalories(details: details1);
                  GoRouter.of(context).push(AppRoutes.kOrderView);
                },
                text: "Next",
              ),
      ),
    );
  }
}
