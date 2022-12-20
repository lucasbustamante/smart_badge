import 'package:flutter/material.dart';

class FlutterPage extends StatefulWidget {
  const FlutterPage({Key? key}) : super(key: key);

  @override
  State<FlutterPage> createState() => _FlutterPageState();
}

class _FlutterPageState extends State<FlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
    );
  }
}
