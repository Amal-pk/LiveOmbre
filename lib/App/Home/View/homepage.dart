import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Live Ombre",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: ListView(children: [
        ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              color: Colors.amber,
            );
          },
        ),
      ]),
    );
  }
}
