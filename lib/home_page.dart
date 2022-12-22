import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_badge/const.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smart_badge/secondary_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerFuncao = TextEditingController();


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
//TODO: criar metodo de salvamento


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //atualiza a pagina
      onTap: () => Navigator.push(context,
          PageTransition(
              child: HomePage(),
              type: PageTransitionType.bottomToTop)),
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
            child: SingleChildScrollView(
              child: Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40),
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
                                          child: HomePage(),
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
                GestureDetector(
                  onLongPress: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text('Alterar nome'),
                        content: TextField(
                          maxLength: 25,
                          controller: controllerNome,
                          decoration: InputDecoration(
                            hintText: 'Digite o nome',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),

                              borderSide: BorderSide(
                                  color: Colors.purple
                              ),
                            ),
                          ),
                          onChanged: (text){

                          },
                        ),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                            controllerNome.clear();
                          }, child: Text('Cancelar')),
                          TextButton(onPressed: (){
                            setState(() {
                              name = controllerNome.text;
                              Navigator.pop(context);
                              controllerNome.clear();
                            });
                          }, child: Text('Salvar')),
                        ],

                      );
                    });
                  },
                  child: Text(name, style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30
                  ),),
                ),
                    SizedBox(
                      height: 5,
                    ),
                    //Text de função
                  GestureDetector(
                    onLongPress: (){
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: Text('Alterar função'),
                          content: TextField(
                            maxLength: 30,
                            controller: controllerFuncao,
                            decoration: InputDecoration(
                              hintText: 'Digite sua função',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),

                                borderSide: BorderSide(
                                    color: Colors.purple
                                ),
                              ),
                            ),
                            onChanged: (text){

                            },
                          ),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                              controllerFuncao.clear();
                            }, child: Text('Cancelar')),
                            TextButton(onPressed: (){
                              setState(() {
                                funcao = controllerFuncao.text;
                                Navigator.pop(context);
                                controllerFuncao.clear();
                              });
                            }, child: Text('Salvar')),
                          ],

                        );
                      });
                    },
                    child: Text(funcao, style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 25
                    ),),
                  ),
                    SizedBox(height: 80),
                    Image.asset("images/logo.png",
                      height: 150,)
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
