import 'package:flutter/material.dart';


void main() {

  runApp(const MyApp());

}

//==================xxxxxxxxx===========================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AA TESTE',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(color: Colors.white, width: 100, height: 100,),
          Container(color: Colors.blue, width: 50, height: 50,),
        ]
      ),
    );
  }
}
//==================xxxxxxxxx===========================
