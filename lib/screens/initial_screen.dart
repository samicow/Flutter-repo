import 'package:flutter_application_1/components/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/form_screen.dart';


class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(color: Colors.black26),
          title: const Text('Início'),
        ),
        body: ListView(
          children: const [
            Task('abc', 'https://s1.static.brasilescola.uol.com.br/be/conteudo/images/imagem-em-lente-convexa.jpg' ),
            Task('def', 'https://static3.tcdn.com.br/img/img_prod/460977/boneco_e_t_o_extraterrestre_e_t_the_extraterrestrial_stunt_puppet_replica_escala_1_1_neca_8391_1_20201211172102.jpg'),
            Task('ghi', ''),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => FormScreen(),
            ),
            );
        },
        child: const Icon(Icons.add),
        ),
      );
  }
}