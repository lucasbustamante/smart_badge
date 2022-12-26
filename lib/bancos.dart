import 'package:flutter/material.dart';
import 'package:smart_badge/qrpix.dart';
import 'package:smart_badge/view/container_network.dart';

class Bancos extends StatelessWidget {
  final String banco;
  final String logo;

  const Bancos({super.key, required this.banco, required this.logo});

  @override
  Widget build(BuildContext context) {
String link2 = '';
    switch(logo){
      case 'itau' :
        link2 = '00020126360014BR.GOV.BCB.PIX0114+55119802632005204000053039865'
            '802BR5916Lucas Bustamante6009Sao Paulo62070503***6304E380';
        break;
      case 'picpay' :
        link2 = "00020126520014BR.GOV.BCB.PIX0130lucascostabusta"
            "mante@gmail.com5204000053039865802BR5916Lucas Busta"
            "mante6009Sao Paulo62070503***6304F8B8";
        break;
      case 'mercadopago' :
        link2 = '00020126580014BR.GOV.BCB.PIX0136a90a7beb-807f-4e94-b35c-5c044'
            '7e70cbd5204000053039865802BR5916Lucas Bustamante6009Sao Paulo62070503***63042406';
        break;
      case 'ame' :
        link2 = '00020126820014BR.GOV.BCB.PIX016000020126580014br.gov.bcb.pix'
            '01361b6e67f6-d349-434f-90ae-a04b5204000053039865802BR5916Lucas Bustamante6009Sao Paulo62070503***6304E5AC';
        break;
      case 'c6' :
        link2 = '00020126580014BR.GOV.BCB.PIX0136efa35ebd-8c27-438e-acfc-92321b'
            'cf9bc85204000053039865802BR5916Lucas Bustamante6009Sao Paulo62070503***63047A44';
        break;
      case '99' :
        link2 = '00020126580014BR.GOV.BCB.PIX013692369843-daa2-4735-a3b6-a26f6'
            '06c2f935204000053039865802BR5916Lucas Bustamante6009Sao Paulo62070503***6304C022';
        break;
    }

    return GestureDetector(
      onLongPress: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
            QrPix(
              link: link2,)));
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 75,
          width: 260,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white24
          ),
          child: Row(
            children: [
              Image.asset("images/$logo.png", width: 60,),
              SizedBox(width: 30),
              Text(banco, style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
