import 'package:flutter/material.dart';
import 'package:liveombre/App/Home/View/homepage.dart';

class BottomNavigationController extends ChangeNotifier {
  List<dynamic> screens = [
    const HomePage(),
    const HomePage(),
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
