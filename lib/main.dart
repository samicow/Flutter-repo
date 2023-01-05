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
      home: Scaffold(
        appBar: AppBar(
           title: Text('teste 1'),
      ),
      body: Column(
        children: [
          Task('num1'),
           Task('num2'),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}),
      ),
      
      );
      }
}
//==================xxxxxxxxx===========================

class Task extends StatelessWidget {
  final String nome;
  const Task(this.nome, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Stack(
              children:[
 Container(
            color: Colors.blue,
            height: 140,
          ),
          Container(
            color: Colors.white,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Container(
          color: Colors.black26,
          width: 72,
          height: 100,
    ),
    Text(nome),
    ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_drop_up))
],
            ),
          )
              ],
            ),     
          );
  }
}
