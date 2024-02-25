import 'package:balanced_meal/core/utils/app_colors.dart';
import 'package:balanced_meal/core/utils/app_styles.dart';
import 'package:balanced_meal/core/utils/functions/border_text_field.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.onChanged,
      required this.hintText,
      this.keyboardType = TextInputType.number,
      //this.readonly = false ,
      this.readonly,
      this.widgetsuffix});
  final String hintText;
  final Widget? widgetsuffix;
  final void Function(String) onChanged;
  final TextInputType? keyboardType;
  final bool? readonly;
  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readonly ?? false,
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.kTextStyleNormal16
            .copyWith(color: AppColors.kUnSelectedButtonText),
        filled: true,
        fillColor: AppColors.kWhiteColor,
        suffixIcon: IconButton(
          onPressed: () {},
          icon: widgetsuffix ?? const Text(""),
        ),
        focusedBorder: bordertextfield(),
        enabledBorder: bordertextfield(),
      ),
    );
  }
}
