import 'package:flutter/material.dart';
import 'package:flutter_application_1/form.dart';

class success extends StatefulWidget {
  const success({super.key});

  @override
  State<success> createState() => _successState();
}

class _successState extends State<success> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Fixer Upper'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:  const 
      Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Text(
          'Thanks for choosing Fixer Upper. We shall get back to you soon about your order.',
          style: TextStyle(
            letterSpacing: 2.0,
            fontSize: 20.0,
            fontStyle: FontStyle.italic
          )
        )
      ),
    );
  }
}