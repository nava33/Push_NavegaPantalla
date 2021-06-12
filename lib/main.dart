import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navegacion basica',
    home: PrimeraRuta(),
  ));
}

class PrimeraRuta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera ruta'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Abrir Ruta'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegundaRuta()),
            );
          },
        ),
      ),
    );
  }
}

class SegundaRuta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Ruta"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Regresar!'),
        ),
      ),
    );
  }
}
