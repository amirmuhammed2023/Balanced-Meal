import 'package:balanced_meal/core/utils/app_colors.dart';
import 'package:balanced_meal/core/utils/app_styles.dart';
import 'package:balanced_meal/core/utils/functions/border_text_field.dart';
import 'package:flutter/material.dart';

class CustomDropField extends StatelessWidget {
  const CustomDropField({
    super.key,
    required this.hintText,
    required this.onPressed,
  });
  final String hintText;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.kTextStyleNormal16
            .copyWith(color: AppColors.kUnSelectedButtonText),
        filled: true,
        fillColor: AppColors.kWhiteColor,
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.keyboard_arrow_down_sharp),
        ),
        enabledBorder: bordertextfield(),
        focusedBorder: bordertextfield(),
      ),
    );
  }
}
