import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrPix extends StatelessWidget {
  final String link;

  const QrPix({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[
          //Background
          Lottie.asset("images/background1.json"),
      Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xff63e5d8),
                borderRadius: BorderRadius.circular(25),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5.0,
                      offset: Offset(0, 30)
                  )
                ],
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40, bottom: 40),
                    child: Image.asset(
                        "images/pix.png"
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    height: 260,
                    width: 260,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white24
                    ),
                    child: QrImage(
                      data: link,
                      errorCorrectionLevel: QrErrorCorrectLevel.H,
                      size: 250,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff8df6e7),
                        padding: EdgeInsets.all(20),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                      onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Voltar',style: TextStyle(
                    fontSize: 25, color: Colors.black87
                  ),))
                ],
              ),
            ),
          ),
        ),
      ),
      ]
    ));
  }
}
