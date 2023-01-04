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
        primarySwatch: Colors.blue,
      ),
      home: Container(
        color: Colors.black,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
          Container(color: Colors.green, width: 100, height: 100,),
          Container(color: Colors.blue, width: 50, height: 50,),
        ],
        ),
         Stack(
            alignment: AlignmentDirectional.center,
            children: [
          Container(color: Colors.green, width: 100, height: 100,),
          Container(color: Colors.blue, width: 50, height: 50,),
        ],
        ),
        Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(color: Colors.cyan, height: 50, width: 50,),
    Container(color: Colors.pinkAccent, height: 50, width: 50,),
    Container(color: Colors.purple, height: 50, width: 50,)
  ],
),      

Container(
  color: Colors.amber,
  height: 50,
  width: 540,
  child: Text(
    'TESTE',
     style: TextStyle(
      color: Colors.black,
      fontSize: 28,
     ),
     textAlign: TextAlign.center,
  ),
),
ElevatedButton(onPressed: (){
  print('apertou o botão');
},
 child: Text('Aperte botão'),
 ),

        ],
      )
      )

    );
  }

}
//==================xxxxxxxxx===========================
