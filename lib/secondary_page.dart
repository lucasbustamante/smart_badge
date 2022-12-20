import 'package:flutter/material.dart';

class SecondaryPage extends StatefulWidget {
  const SecondaryPage({Key? key}) : super(key: key);

  @override
  State<SecondaryPage> createState() => _SecondaryPageState();
}

class _SecondaryPageState extends State<SecondaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
    );
  }
}
