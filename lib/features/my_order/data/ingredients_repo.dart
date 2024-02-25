import 'package:balanced_meal/core/models/food_model.dart';
import 'package:balanced_meal/core/utils/constants/my_strings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class IngredientsRepo {
  List<FoodModel> vegetablesingredients = [];
  List<FoodModel> carbsingredients = [];
  List<FoodModel> meatingredients = [];

  Future<List<FoodModel>> vegetablesgetted() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore
        .instance
        .collection(kVegetablesCollection)
        .get();
    final vgtitems =
        querySnapshot.docs.map((e) => FoodModel.fromsnapshot(e)).toList();
    vegetablesingredients = vgtitems;
    return vegetablesingredients;
  }

  Future<List<FoodModel>> carbsgetted() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await FirebaseFirestore.instance.collection(kCarbsCollection).get();
    final crbitems =
        querySnapshot.docs.map((e) => FoodModel.fromsnapshot(e)).toList();
    carbsingredients = crbitems;
    return carbsingredients;
  }

  Future<List<FoodModel>> meatgetted() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await FirebaseFirestore.instance.collection(kMeatCollection).get();
    final metitems =
        querySnapshot.docs.map((e) => FoodModel.fromsnapshot(e)).toList();
    carbsingredients = metitems;
    return carbsingredients;
  }
}
