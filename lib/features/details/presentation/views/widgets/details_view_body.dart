import 'package:balanced_meal/core/models/details_model.dart';
import 'package:balanced_meal/core/widgets/custom_appbar.dart';
import 'package:balanced_meal/features/details/presentation/view_model/provider/drop_field_provider.dart';
import 'package:balanced_meal/features/details/presentation/views/widgets/button_status.dart';
import 'package:balanced_meal/features/details/presentation/views/widgets/details_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class DetailsViewBody extends StatefulWidget {
  const DetailsViewBody({super.key});

  @override
  State<DetailsViewBody> createState() => _DetailsViewBody1State();
}

class _DetailsViewBody1State extends State<DetailsViewBody> {
  DetailsModel elementdetails = DetailsModel("", 0, 0, 0);
  @override
  Widget build(BuildContext context) {
    final mydropinstance = Provider.of<DropFieldProvider>(context);
    elementdetails.gender = mydropinstance.text;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: "Enter your details",
                onPressed: () {
                  if (GoRouter.of(context).canPop()) {
                    GoRouter.of(context).pop();
                  }
                },
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
              DetailsSection(
                onChangedWeight: (weightval) {
                  setState(() {
                    elementdetails.weight = double.tryParse(weightval!) ?? 0;
                  });
                },
                onChangedHeight: (heightval) {
                  setState(() {
                    elementdetails.height = double.tryParse(heightval!) ?? 0;
                  });
                },
                onChangedAge: (ageval) {
                  setState(() {
                    elementdetails.age = double.tryParse(ageval!) ?? 0;
                  });
                },
              ),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.08,
                ),
              ),
              ButtonStatus(details1: elementdetails),
              const SizedBox(height: 20),
            ],
          ),
        )
      ],
    );
  }
}
