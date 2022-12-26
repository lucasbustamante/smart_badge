import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:smart_badge/home_page.dart';

import '../container_pix.dart';
import '../secondary_page.dart';

class ContainerNetwork extends StatefulWidget {

  final String image;
  final String link;
  final Color color;

  const ContainerNetwork({super.key, required this.image, required this.link,
    required this.color});

  @override
  State<ContainerNetwork> createState() => _ContainerNetworkState();
}

class _ContainerNetworkState extends State<ContainerNetwork> {

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onLongPress: () {

      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            height: 500,
            width: 300,
            decoration: BoxDecoration(
              color: widget.color,
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
                      "images/"+widget.image+".png"
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
                    data: widget.link,
                    errorCorrectionLevel: QrErrorCorrectLevel.H,
                    size: 250,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text('Escaneie o QR Code',
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w400,
                    color: Colors.white,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 2.0),
                        blurRadius: 20.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
