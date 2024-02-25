import 'package:balanced_meal/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.onPressed, required this.title});
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.sizeOf(context).height * 0.112,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.arrow_left_sharp,
              size: 30,
            ),
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.17),
          Text(
            title,
            style: AppStyles.kTextStyleMeduim16.copyWith(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
