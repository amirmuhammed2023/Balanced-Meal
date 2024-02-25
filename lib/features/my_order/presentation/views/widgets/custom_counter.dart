import 'package:balanced_meal/core/models/food_model.dart';
import 'package:balanced_meal/core/utils/app_styles.dart';
import 'package:balanced_meal/features/my_order/presentation/view_model/Provider/my_order_provider.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/counter_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomCounter extends StatelessWidget {
  const CustomCounter({super.key, required this.myfoodelement});
  final FoodModel myfoodelement;
  @override
  Widget build(BuildContext context) {
    final myorderinstance = Provider.of<MyOrderProvider>(context);
    return Row(
      children: [
        CounterButton(
          icon: Icons.remove,
          onTap: () {
            myorderinstance.removeitemfromcart(fooditem: myfoodelement);
            myorderinstance.requirmentsdone();
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            myfoodelement.count.toString(),
            style: AppStyles.kTextStyleMeduim16,
          ),
        ),
        CounterButton(
          icon: Icons.add,
          onTap: () {
            myorderinstance.additemtocart(item: myfoodelement);
            myorderinstance.requirmentsdone();
          },
        )
      ],
    );
  }
}
