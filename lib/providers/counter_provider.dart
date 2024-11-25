import 'package:flutter/widgets.dart';

class CounterModel extends ChangeNotifier {
  int counter = 0;

  void addFunc() {
    counter++;
    notifyListeners();
  }

  void removeFunc() {
    counter--;
    notifyListeners();
  }
}
