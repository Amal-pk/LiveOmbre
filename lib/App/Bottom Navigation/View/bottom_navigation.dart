import 'package:flutter/material.dart';
import 'package:liveombre/App/Bottom%20Navigation/Controller/bottom_navigation_controller.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<BottomNavigationController>();
    int currentScreenIndex = controller.currentIndexSearch();
    return Scaffold(
      body: controller.screens[currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
        elevation: 0,
        currentIndex: currentScreenIndex,
        onTap: (value) => controller.currentIndexResult(value),

        items: [
          BottomNavigationBarItem(
            icon: Icon(
              (currentScreenIndex == 0) ? Icons.shield : Icons.shield_outlined,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (currentScreenIndex == 1)
                  ? Icons.compass_calibration
                  : Icons.compass_calibration_outlined,
            ),
            label: 'Discover',
          ),
        ],
      ),
    );
  }
}
