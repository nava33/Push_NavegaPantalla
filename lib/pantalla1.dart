import 'package:flutter/material.dart';
import 'pantalla2.dart';

class pantalla1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Pantalla 1'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.red,
          child: Text('Avanzar a Pantalla 2'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => pantalla2()),
            );
          },
        ),
      ),
    );
  }
}
