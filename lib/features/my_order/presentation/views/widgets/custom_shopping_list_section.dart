import 'package:balanced_meal/features/my_order/presentation/view_model/Provider/my_order_provider.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/item_summary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomShoppingListSection extends StatelessWidget {
  const CustomShoppingListSection({super.key});

  @override
  Widget build(BuildContext context) {
    final ingredientinstance = Provider.of<MyOrderProvider>(context);
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: ingredientinstance.foodlist
              .map((element) => ItemSummary(
                    shoppingfood: element,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
