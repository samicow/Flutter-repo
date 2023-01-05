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
      body: ListView(
        children: [
          Task('num1dsdsdsdsddsdsd dsdsdsdsdsdsds'),
          Task('num2'),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
       width: 200,
       child: Text(
        nome, 
        style: TextStyle(
          fontSize: 24,
          overflow: TextOverflow.ellipsis,
        ),
      )),
      ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_drop_up))
],
              ),
            )
                ],
              ),     
            ),
    );
  }
}
