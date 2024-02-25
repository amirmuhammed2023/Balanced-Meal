import 'package:balanced_meal/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const kTextStyleExtraBold48 = TextStyle(
    fontSize: 48,
    fontFamily: "AbhayaLibre",
    fontWeight: FontWeight.w800,
    color: Colors.white,
  );
  static const kTextStyleLight20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w300,
    color: AppColors.kTextDetails,
  );
  static const kTextStyleMeduim16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static const kTextStyleNormal16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const kTextStyleNormal14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.kUnSelectedButtonText,
  );
}
