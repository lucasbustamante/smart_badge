import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_page.dart';

void main(){
  //não rotacionar
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}