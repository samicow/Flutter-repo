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
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}
//==================xxxxxxxxx===========================

class Task extends StatefulWidget {
  final String nome;
  const Task(this.nome, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.green,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: TextStyle(
                              fontSize: 24,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )),
                        Text('nivel: $nivel'),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });
                            
                            }, 
                            child: Icon(Icons.arrow_drop_up))
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
