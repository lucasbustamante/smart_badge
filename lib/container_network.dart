import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ContainerNetwork extends StatelessWidget {

  final String image;
  final String link;

  const ContainerNetwork({super.key, required this.image, required this.link});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => Navigator.pop(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Container(
          height: 500,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
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
              Image.asset(
                  "images/"+image),
              Container(
                padding: EdgeInsets.all(15),
                height: 260,
                width: 260,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200
                ),
                child: QrImage(
                  data: link,
                  gapless: true,
                  errorCorrectionLevel: QrErrorCorrectLevel.H,
                  size: 250,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
