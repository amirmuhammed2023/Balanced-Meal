import 'package:balanced_meal/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

OutlineInputBorder bordertextfield() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      color: AppColors.kUnSelectedButtonText,
      width: 0.7,
    ),
    borderRadius: BorderRadius.circular(12),
  );
}
