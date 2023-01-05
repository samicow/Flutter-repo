import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String nome;
  final String photo;
  const Task(this.nome, this.photo, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                     color: Colors.green,
                  ),
                   height: 140,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                         decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(4),
                         color: Colors.black26,
                         ),
                        width: 72,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(
                            widget.photo,
                            fit: BoxFit.cover, ),
                        ),
                      ),
                      SizedBox (
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: const TextStyle(
                              fontSize: 24,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )),
                      SizedBox(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                nivel++;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const  [
                                Icon(Icons.arrow_drop_up),
                                Text('UP', style: TextStyle(fontSize: 12),),
                              ],
                            )),
                      ),
                         
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: nivel/10,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Nivel: $nivel',
                           style: const  TextStyle(
                            color: Colors.white,
                           fontSize: 16)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
