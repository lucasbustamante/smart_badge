import 'package:flutter/material.dart';
import 'package:smart_badge/container_network.dart';
import 'package:lottie/lottie.dart';

class SecondaryPage extends StatefulWidget {
  const SecondaryPage({super.key});


  @override
  State<SecondaryPage> createState() => _SecondaryPageState();
}

class _SecondaryPageState extends State<SecondaryPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onDoubleTap: () => Navigator.pop(context),
      child: Scaffold(
        body: Stack(
          children:[
            //Background
            Lottie.asset("images/background1.json"),
            const Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: DefaultTabController(

                length: 6,
                initialIndex: 2,
                child: TabBarView(
                    physics: BouncingScrollPhysics(),
                    children: [
                  //Whatapp
                  ContainerNetwork(image: "whatsapp",
                    link: "https://api.whatsapp.com/send?phone=5511980263200",
                    color: Colors.green,),
                  //LinkedIn
                  ContainerNetwork(
                      image: "linkedin",
                      link: "https://www.linkedin.com/in/lucas-bustamante-b9612476/",
                      color: Color(0xff0082cc)),
                  //GitHub
                  ContainerNetwork(image: "github",
                    link: "https://github.com/LucasBustamante",
                    color: Color(0xff1e272d),),
                  //Pix
                  ContainerNetwork(
                    image: "pix",
                    link: "00020126520014BR.GOV.BCB.PIX0130lucascostabusta"
                        "mante@gmail.com5204000053039865802BR5916Lucas Busta"
                        "mante6009Sao Paulo62070503***6304F8B8",
                    color: Color(0xff63e5d8), ),
                  //Instagram
                  ContainerNetwork(
                    image: "instagram",
                    link: "https://instagram.com/lucasbustamante_?igshid=YmMyMTA2M2Y=",
                    color: Color(0xffE5667D), ),
                  ContainerNetwork(
                    image: "facebook",
                    link: "https://www.facebook.com/lucas.costa.739",
                    color: Color(0xff3B5997), ),

                ])),
          )
      ],
        ),
      ),
    );
  }
}
