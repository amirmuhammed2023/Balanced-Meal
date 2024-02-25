import 'package:balanced_meal/core/widgets/custom_appbar.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/confirm_section.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/custom_shopping_list_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderCartViewBody extends StatelessWidget {
  const OrderCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: "Order summary",
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        const SizedBox(height: 24),
        const CustomShoppingListSection(),
        const ConfirmSection(),
      ],
    );
  }
}
