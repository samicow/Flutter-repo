
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova pag'),
      ),
      body: Center(
        child: Container(
    
          height: 650,
          width: 375,
          decoration: BoxDecoration(
           color:Colors.black12,
          border: Border.all(width: 3),
        ),
      ),
      ),
    );

  }
}