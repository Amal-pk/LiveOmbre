import 'package:flutter/material.dart';
import 'package:liveombre/App/Bottom%20Navigation/Controller/bottom_navigation_controller.dart';
import 'package:liveombre/App/Bottom%20Navigation/View/bottom_navigation.dart';
import 'package:liveombre/App/Home/Controller/home_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavigationController(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomePageController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Live Ombre',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const BottomNavigationBarScreen(),
      ),
    );
  }
}
