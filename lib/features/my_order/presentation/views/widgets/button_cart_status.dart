import 'package:balanced_meal/core/utils/app_routes.dart';
import 'package:balanced_meal/core/widgets/custom_elevated_button.dart';
import 'package:balanced_meal/features/my_order/presentation/view_model/Provider/my_order_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ButtonCartStatus extends StatelessWidget {
  const ButtonCartStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final mycartinstance = Provider.of<MyOrderProvider>(context);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: mycartinstance.isactive == true
          ? CustomElevatedButton(
              onPressed: () {
                mycartinstance.clearitemfromcart();
                mycartinstance.requirmentsdone();
                GoRouter.of(context).go(AppRoutes.kDetailsView);
                /* Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                  builder: (context) {
                    return const DetailsView();
                  },
                ), (route) => false);*/
              },
              text: "Confirm",
            )
          : const CustomElevatedButtondisabled(text: "Confirm"),
    );
  }
}
