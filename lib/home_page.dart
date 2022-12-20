import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_badge/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.leanBack,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  initState() {
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual, overlays: []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 7,
                color: kPrimaryColor)
              ),
              child: Stack(
                children: [ Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("images/1.jpg")
                      )
                  ),
                ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("images/flutter.png")
                            )
                        ),
                      ),
                    ],
                  ),
                ]
              ),
            ),
            Text('Lucas Bustamante', style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30
            ),),
            Text('Desenvolvedor Mobile (Flutter)', style: TextStyle(
                fontSize: 20
            ),)
          ],
        ),
      ),
    );
  }
}
