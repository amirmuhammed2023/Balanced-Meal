import 'package:balanced_meal/core/models/details_model.dart';
import 'package:balanced_meal/core/models/food_model.dart';

class MyOrderRepo {
  int calories = 0;
  double allcaloriesneed = 0;
  int price = 0;
  int count = 0;
  bool isactive = false;
  List<FoodModel> myorder = [];

  List<FoodModel> itemadded({required FoodModel item}) {
    if (myorder.contains(item)) {
      price += 12; //FoodModel price
      calories += item.calories;
      count = item.count++;
    } else {
      myorder.add(item);
      price += 12; //FoodModel price
      calories += item.calories;
      count = item.count++;
    }
    return myorder;
  }

  List<FoodModel> itemremoved({required FoodModel item}) {
    if (item.count > 1) {
      price -= 12; //FoodModel price
      calories -= item.calories;
      count = item.count--;
    } else {
      myorder.remove(item);
      price -= 12; //FoodModel price
      calories -= item.calories;
      count = item.count--;
    }
    return myorder;
  }

  itemsclear() {
    calories = 0;
    price = 0;
    myorder.clear();
  }

  double fetchallcaloriesneeded({required DetailsModel details}) {
    if (details.gender == "Male") {
      allcaloriesneed = ((666.47) +
          (13.75 * details.weight) +
          (5 * details.height) -
          (6.75 * details.age));
    } else if (details.gender == "Female") {
      allcaloriesneed = ((655.1) +
          (9.56 * details.weight) +
          (1.85 * details.height) -
          (4.67 * details.age));
    }
    return allcaloriesneed;
  }

  bool isrightcalories() {
    double ratio = (allcaloriesneed * 10) / 100;
    double caloriesratio = ratio + calories;
    if (caloriesratio >= allcaloriesneed) {
      isactive = true;
    } else {
      isactive = false;
    }
    return isactive;
  }
}
