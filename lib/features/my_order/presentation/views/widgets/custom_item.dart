import 'package:balanced_meal/core/models/food_model.dart';
import 'package:balanced_meal/core/utils/app_styles.dart';
import 'package:balanced_meal/core/widgets/custom_elevated_button.dart';
import 'package:balanced_meal/features/my_order/presentation/view_model/Provider/my_order_provider.dart';
import 'package:balanced_meal/features/my_order/presentation/views/widgets/custom_counter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, required this.myfoodmodel});
  final FoodModel myfoodmodel;
  @override
  Widget build(BuildContext context) {
    final itemeditinstance = Provider.of<MyOrderProvider>(context);
    return Card(
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.14,
                child: CachedNetworkImage(
                  fit: BoxFit.contain,
                  imageUrl: myfoodmodel.imagelink,
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      myfoodmodel.text,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.kTextStyleNormal16,
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "${myfoodmodel.calories} cal",
                      style: AppStyles.kTextStyleNormal14,
                    ),
                  )
                ],
              ),
              Expanded(
                child:
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text("\$12", style: AppStyles.kTextStyleMeduim16),
                  ),
                  myfoodmodel.count == 0
                      ? CustomElevatedButton(
                          onPressed: () {
                            itemeditinstance.additemtocart(item: myfoodmodel);
                            itemeditinstance.requirmentsdone();
                          },
                          text: "Add",
                          vertical: 7,
                        )
                      : CustomCounter(myfoodelement: myfoodmodel),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
