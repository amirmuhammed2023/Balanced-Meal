import 'package:balanced_meal/core/utils/app_routes.dart';
import 'package:balanced_meal/core/widgets/custom_elevated_button.dart';
import 'package:balanced_meal/features/my_order/presentation/view_model/Provider/my_order_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ButtonOrderStatus extends StatelessWidget {
  const ButtonOrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final caloriesinstance = Provider.of<MyOrderProvider>(context);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: caloriesinstance.isactive == true
          ? CustomElevatedButton(
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.kOrderCartView);
              },
              text: "Place order",
            )
          : const CustomElevatedButtondisabled(
              text: "Place order",
            ),
    );
  }
}
