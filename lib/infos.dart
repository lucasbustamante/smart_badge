import 'package:flutter/material.dart';

class Infos extends StatefulWidget {
  const Infos({Key? key}) : super(key: key);

  @override
  State<Infos> createState() => _InfosState();
}

class _InfosState extends State<Infos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Smart Badge', style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30
            ),)
          ],
        ),
      )
    );
  }
}
