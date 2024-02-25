import 'package:balanced_meal/core/models/food_model.dart';
import 'package:balanced_meal/features/my_order/data/ingredients_repo.dart';
import 'package:flutter/material.dart';

class FireStoreIngredientsProvider extends ChangeNotifier {
  final IngredientsRepo allitems;
  List<FoodModel> itemsvgt = [];
  List<FoodModel> itemscrb = [];
  List<FoodModel> itemsmet = [];
  bool isloading = false;
  FireStoreIngredientsProvider(this.allitems);

  fetchingredients() async {
    isloading = true;
    itemsvgt = await allitems.vegetablesgetted();
    itemscrb = await allitems.carbsgetted();
    itemsmet = await allitems.meatgetted();
    isloading = false;
    notifyListeners();
  }
}
