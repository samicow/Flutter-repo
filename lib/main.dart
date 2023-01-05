import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/task.dart';

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
      title: 'Teste',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(color: Colors.black26),
          title: const Text('Início'),
        ),
        body: ListView(
          children: const [
            const Task('abc', 'https://s1.static.brasilescola.uol.com.br/be/conteudo/images/imagem-em-lente-convexa.jpg' ),
            const Task('def', 'https://static3.tcdn.com.br/img/img_prod/460977/boneco_e_t_o_extraterrestre_e_t_the_extraterrestrial_stunt_puppet_replica_escala_1_1_neca_8391_1_20201211172102.jpg'),
            const Task('ghi', ''),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
      
    );
  }
}
//==================xxxxxxxxx===========================

