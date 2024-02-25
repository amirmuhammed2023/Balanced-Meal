/*import 'package:balanced_meal/core/utils/constants/my_strings.dart';
import 'package:balanced_meal/core/utils/app_lists.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SaveItemsFireStore {
  CollectionReference vegetablesitems =
      FirebaseFirestore.instance.collection(kVegetablesCollection);
  CollectionReference carbsitems =
      FirebaseFirestore.instance.collection(kCarbsCollection);
  CollectionReference meatitems =
      FirebaseFirestore.instance.collection(kMeatCollection);

  Future<void> addvegetablesitems() async {
    for (var element in AppLists.kVegetablesList) {
      await vegetablesitems
          .doc(element.text)
          .set(
            {
              kItemText: element.text,
              kItemCount: element.count,
              kItemImage: element.imagelink,
              kItemCalories: element.calories,
            },
          )
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }
  }

  Future<void> addcarbsitems() async {
    for (var element in AppLists.kCarbList) {
      await carbsitems
          .doc(element.text)
          .set(
            {
              kItemText: element.text,
              kItemCount: element.count,
              kItemImage: element.imagelink,
              kItemCalories: element.calories,
            },
          )
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }
  }

  Future<void> addmeatitems() async {
    for (var element in AppLists.kMeatList) {
      await meatitems
          .doc(element.text)
          .set(
            {
              kItemText: element.text,
              kItemCount: element.count,
              kItemImage: element.imagelink,
              kItemCalories: element.calories,
            },
          )
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }
  }
}*/
