import 'package:flutter/cupertino.dart';

class MovieModel extends ChangeNotifier {
  final List fav = [];

  void addFav(value) {
    fav.add(value);
    notifyListeners();
  }

  void removeFav(value) {
    fav.remove(value);
    notifyListeners();
  }
}
