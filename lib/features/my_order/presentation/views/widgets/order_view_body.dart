import 'package:balanced_meal/core/widgets/custom_appbar.dart';
import 'package:balanced_meal/features/my_order/presentation/view_model/Provider/my_order_provider.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/ingredients_section.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/place_order_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final mycartinstance = Provider.of<MyOrderProvider>(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            title: "Create your order",
            onPressed: () {
              mycartinstance.clearitemfromcart();
              mycartinstance.requirmentsdone();
              GoRouter.of(context).pop();
            },
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.035),
          const IngredientsSection(),
          const SizedBox(height: 20),
          const PlaceOrderSection(),
        ],
      ),
    );
  }
}
