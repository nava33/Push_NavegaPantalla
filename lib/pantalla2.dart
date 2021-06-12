import 'package:flutter/material.dart';

class pantalla2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Pantalla 2'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text('Avanzar a Pantalla 1'),
          onPressed: () {},
        ),
      ),
    );
  }
}
