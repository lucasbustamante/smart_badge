import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrPix extends StatelessWidget {
  final String link;
  final String logo;
  final String banco;
  final Color color;

  const QrPix({super.key, required this.link,
    required this.logo, required this.banco, required this.color});

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
                color: color,
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
                    padding: const EdgeInsets.only(
                        left: 40, right: 40, bottom: 20,),
                    child: Column(
                      children: [
                        Image.asset(
                            "images/"+logo+".png",
                          height: 65,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(banco, style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),),
                        )
                      ],
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
                    height: 20,
                  ),
                  TextButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white24,
                        padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                      onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('            voltar            ',
                    style: TextStyle(
                    fontSize: 25, color: Colors.black45
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
