import 'package:balanced_meal/core/models/details_model.dart';

bool availablebuttondetails({required DetailsModel details}) {
  if (details.gender == "" ||
      details.age == 0 ||
      details.height == 0 ||
      details.weight == 0) {
    return false;
  }
  return true;
}
