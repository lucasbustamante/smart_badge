import 'package:flutter/material.dart';
import 'package:smart_badge/container_network.dart';
import 'package:lottie/lottie.dart';

class SecondaryPage extends StatefulWidget {

  @override
  State<SecondaryPage> createState() => _SecondaryPageState();
}

class _SecondaryPageState extends State<SecondaryPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => Navigator.pop(context),
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Stack(
          children: [
            Lottie.asset("images/background1.json"),
            Center(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Container(height: MediaQuery.of(context).size.height,
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContainerNetwork(image: "github.png",
                    link: "https://github.com/LucasBustamante",),

                  ],
                ),
              ),
            ),
          ),
      ]
        ),
      ),
    );
  }
}
