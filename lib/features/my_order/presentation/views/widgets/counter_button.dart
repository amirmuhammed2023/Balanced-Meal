import 'package:balanced_meal/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({super.key, required this.onTap, required this.icon});
  final void Function() onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: const BoxDecoration(
        color: AppColors.kPrimaryColor,
        shape: BoxShape.circle,
      ),
      child: InkWell(
        onTap: onTap,
        child: Icon(
          icon,
          size: 16,
          color: AppColors.kWhiteColor,
        ),
      ),
    );
  }
}
