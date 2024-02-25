import 'package:balanced_meal/core/models/details_model.dart';
import 'package:balanced_meal/core/models/food_model.dart';
import 'package:balanced_meal/features/my_order/data/my_order_repo.dart';
import 'package:flutter/material.dart';

class MyOrderProvider extends ChangeNotifier {
  final MyOrderRepo allitems;
  List<FoodModel> foodlist = [];
  int count = 0;
  int calories = 0;
  int price = 0;
  double allcaloriesneed = 0;
  bool isactive = false;
  MyOrderProvider(this.allitems);

  additemtocart({required FoodModel item}) {
    foodlist = allitems.itemadded(item: item);
    calories = allitems.calories;
    price = allitems.price;
    count = allitems.count;
    notifyListeners();
  }

  removeitemfromcart({required FoodModel fooditem}) {
    foodlist = allitems.itemremoved(item: fooditem);
    calories = allitems.calories;
    price = allitems.price;
    count = allitems.count;
    notifyListeners();
  }

  clearitemfromcart() {
    allitems.itemsclear();
    calories = allitems.calories;
    price = allitems.price;
    notifyListeners();
  }

  fetchallcalories({required DetailsModel details}) {
    allcaloriesneed = allitems.fetchallcaloriesneeded(details: details);
    notifyListeners();
  }

  requirmentsdone() {
    isactive = allitems.isrightcalories();
    notifyListeners();
  }
}
