import 'package:flutter/material.dart';

class BottomNavigationController extends ChangeNotifier{
  List<dynamic> screens = [
    // const Screens(),
    // const Screens(),
    // const Screens(),
    // const Settings(),
  ];

  int currentIndex = 0;

  int currentIndexSearch() {
    return currentIndex;
  }

  void currentIndexResult(int index) {
    currentIndex = index;
    notifyListeners();
  }
}