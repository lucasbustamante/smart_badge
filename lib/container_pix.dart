import 'package:flutter/material.dart';

import 'bancos.dart';

class ContainerPix extends StatefulWidget {
  const ContainerPix({Key? key}) : super(key: key);

  @override
  State<ContainerPix> createState() => _ContainerPixState();
}

class _ContainerPixState extends State<ContainerPix> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Container(
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
          child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, bottom: 40, top: 40),
                  child: Image.asset(
                      "images/pix.png"
                  ),
                ),
                Bancos(banco: 'Itaú',
                logo: 'itau',),
                Bancos(banco: 'Picpay',
                  logo: 'picpay',),
                Bancos(banco: 'Mercado Pago',
                  logo: 'mercadopago',),
                Bancos(banco: 'Ame',
                  logo: 'ame',),
                Bancos(banco: 'C6 Bank',
                  logo: 'c6',),
                Bancos(banco: '99 Pay',
                  logo: '99',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
