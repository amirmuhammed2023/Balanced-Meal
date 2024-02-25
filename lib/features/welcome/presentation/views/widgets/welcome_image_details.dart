import 'package:balanced_meal/core/utils/app_routes.dart';
import 'package:balanced_meal/core/utils/app_styles.dart';
import 'package:balanced_meal/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeImageDetails extends StatelessWidget {
  const WelcomeImageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.grey.withOpacity(0.0),
            Colors.black.withOpacity(0.9),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 30),
        child: Column(
          children: [
            const SizedBox(height: 8),
            const FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Balanced Meal",
                textAlign: TextAlign.center,
                style: AppStyles.kTextStyleExtraBold48,
              ),
            ),
            const Expanded(child: SizedBox()),
            const Text(
              "Craft your ideal meal effortlessly with our app. Select nutritious ingredients tailored to your taste and well-being.",
              style: AppStyles.kTextStyleLight20,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 28),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: CustomElevatedButton(
                  text: "Order Food",
                  onPressed: () {
                    GoRouter.of(context).push(AppRoutes.kDetailsView);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
