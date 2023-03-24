import 'package:flutter/material.dart';
import 'package:liveombre/App/Home/Controller/home_controller.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final high = MediaQuery.of(context).size.height;
    final wid = MediaQuery.of(context).size.width;
    final controller = context.watch<HomePageController>();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Live Ombre",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: ListView(
        children: [
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: controller.clr.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: high / 1.2,
                    color: controller.clr[index],
                  ),
                  Positioned(
                    left: wid / 1.25,
                    top: high / 1.48,
                    // bottom: 50,
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_circle_outline_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const Text(
                          "Add",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: wid / 1.25,
                    top: high / 1.8,
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const Text(
                          "Share",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: wid / 1.25,
                    top: high / 2.2,
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const Text(
                          "Comment",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: wid / 1.25,
                    top: high / 2.88,
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const Text(
                          "Like",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
