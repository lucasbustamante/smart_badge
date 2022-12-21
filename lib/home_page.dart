import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_badge/colors.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smart_badge/secondary_page.dart';

import 'flutter_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


//deixar o app em fullscreen
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
    return GestureDetector(
     onDoubleTap: () => Navigator.push(context,
         PageTransition(
             child: SecondaryPage(),
             type: PageTransitionType.bottomToTop)),
      child: Scaffold(
        //Container para definir background
        body: Container(
          /*decoration: BoxDecoration(
            gradient: LinearGradient(

                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Color(0xff7A0BB435), ],
                stops: [
                  0.6 , 10
                ]
            )
          ),*/
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 6,
                          color: kPrimaryColor)
                  ),
                  child: Stack(
                      children: [
                        //Foto de perfil
                        Container(
                          height: 220,
                          width: 220,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("images/1.jpg")
                              )
                          ),
                        ),
                        Column(
                          children: [

                            //Trocar icone de tecnologia principal
                            GestureDetector(
                              onLongPress: () => Navigator.push(context,
                                  PageTransition(
                                      child: FlutterPage(),
                                      type: PageTransitionType.bottomToTop)),
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(width: 2,
                                        color: kPrimaryColor)
                                ),
                                child: Container(
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
                              ),
                            ),
                          ],
                        ),
                      ]
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                //Text de Nome
                Text('Lucas Bustamante', style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30
                ),),
                SizedBox(
                  height: 5,
                ),
                //Text de função
                Text('Desenvolvedor Mobile (Flutter)', style: TextStyle(
                    fontSize: 20
                ),),
                SizedBox(height: 80),
                Image.asset("images/2.png",
                  height: 150,)
              ],
            ),
          ),
        )
      ),
    );
  }
}
