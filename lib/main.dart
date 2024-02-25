import 'package:balanced_meal/core/utils/app_colors.dart';
import 'package:balanced_meal/core/utils/app_routes.dart';
import 'package:balanced_meal/core/utils/functions/initialize_firebase.dart';
import 'package:balanced_meal/features/details/presentation/view_model/provider/drop_field_provider.dart';
import 'package:balanced_meal/features/my_order/data/ingredients_repo.dart';
import 'package:balanced_meal/features/my_order/data/my_order_repo.dart';
import 'package:balanced_meal/features/my_order/presentation/view_model/Provider/firstore_ingredients_provider.dart';
import 'package:balanced_meal/features/my_order/presentation/view_model/Provider/my_order_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializefirebase();

  //await SaveItemsFireStore().addcarbsitems();
  //await SaveItemsFireStore().addmeatitems();
  //await SaveItemsFireStore().addvegetablesitems();
  runApp(const Balancedmeal());
}

class Balancedmeal extends StatelessWidget {
  const Balancedmeal({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return FireStoreIngredientsProvider(IngredientsRepo());
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return MyOrderProvider(MyOrderRepo());
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return DropFieldProvider();
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.kBackgroundColor,
          // textTheme: GoogleFonts.poppinsTextTheme(),
        ),
      ),
    );
  }
}
