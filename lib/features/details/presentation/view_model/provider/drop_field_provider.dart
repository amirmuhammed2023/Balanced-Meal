import 'package:flutter/material.dart';

class DropFieldProvider extends ChangeNotifier {
  String text = "";

  stringchoosen({required String chosen}) {
    text = chosen;
    notifyListeners();
  }
}
