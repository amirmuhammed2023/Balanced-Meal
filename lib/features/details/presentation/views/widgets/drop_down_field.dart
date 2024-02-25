import 'package:balanced_meal/core/utils/app_colors.dart';
import 'package:balanced_meal/core/utils/app_styles.dart';
import 'package:balanced_meal/features/details/presentation/view_model/provider/drop_field_provider.dart';
import 'package:balanced_meal/features/details/presentation/views/widgets/custom_drop_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DropDownField extends StatefulWidget {
  const DropDownField({super.key});
  @override
  State<DropDownField> createState() => _DropDownField();
}

class _DropDownField extends State<DropDownField> {
  String texthint = "Choose your gender";
  bool showdropbutton = false;

  List items1 = ["Male", "Female"];

  @override
  Widget build(BuildContext context) {
    final dropinstance = Provider.of<DropFieldProvider>(context);
    return Column(
      children: [
        CustomDropField(
          hintText: texthint,
          onPressed: () {
            setState(
              () {
                showdropbutton = !showdropbutton;
              },
            );
          },
        ),
        Visibility(
          visible: showdropbutton == true ? true : false,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: MediaQuery.sizeOf(context).height * 0.14,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: AppColors.kUnSelectedButtonText,
                width: 0.7,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: items1
                  .map((e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            texthint = e;
                            showdropbutton = false;
                            dropinstance.stringchoosen(chosen: e);
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e, style: AppStyles.kTextStyleMeduim16),
                            Visibility(
                              visible: texthint == e ? true : false,
                              child: const Icon(Icons.check),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
