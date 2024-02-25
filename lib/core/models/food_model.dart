import 'package:balanced_meal/core/utils/constants/my_strings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FoodModel {
  final String text;
  final String imagelink;
  final int calories;
  int count;
  FoodModel({
    required this.count,
    required this.text,
    required this.imagelink,
    required this.calories,
  });

  factory FoodModel.fromsnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data();
    return FoodModel(
      count: data[kItemCount],
      text: data[kItemText],
      imagelink: data[kItemImage],
      calories: data[kItemCalories],
    );
  }
}
