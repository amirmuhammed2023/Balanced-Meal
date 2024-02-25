import 'package:balanced_meal/features/welcome/presentation/views/widgets/welcome_image.dart';
import 'package:balanced_meal/features/welcome/presentation/views/widgets/welcome_image_details.dart';
import 'package:flutter/material.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        WelcomeImage(),
        WelcomeImageDetails(),
      ],
    );
  }
}
