import 'package:balanced_meal/core/utils/app_styles.dart';
import 'package:balanced_meal/features/details/presentation/views/widgets/custom_text_field.dart';
import 'package:balanced_meal/features/details/presentation/views/widgets/drop_down_field.dart';
import 'package:flutter/material.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    super.key,
    required this.onChangedAge,
    required this.onChangedHeight,
    required this.onChangedWeight,
  });
  final void Function(String?) onChangedHeight;
  final void Function(String?) onChangedWeight;
  final void Function(String?) onChangedAge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Gender",
            style: AppStyles.kTextStyleMeduim16.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 16),
          const DropDownField(),
          const SizedBox(height: 30),
          Text(
            "Weight",
            style: AppStyles.kTextStyleMeduim16.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onChanged: onChangedWeight,
            hintText: "Enter your weight",
            widgetsuffix: Text(
              "Kg",
              style: AppStyles.kTextStyleMeduim16.copyWith(fontSize: 14),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            "Height",
            style: AppStyles.kTextStyleMeduim16.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onChanged: onChangedHeight,
            hintText: "Enter your height",
            widgetsuffix: Text(
              "Cm",
              style: AppStyles.kTextStyleMeduim16.copyWith(fontSize: 14),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            "Age",
            style: AppStyles.kTextStyleMeduim16.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hintText: "Enter your age",
            onChanged: onChangedAge,
          ),
        ],
      ),
    );
  }
}
