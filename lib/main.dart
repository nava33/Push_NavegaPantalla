import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Demostración de rutas nombradas',
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget PrimeraPantalla
    initialRoute: '/',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget PrimeraPantalla
      '/': (context) => PrimeraPantalla(),
      // Cuando naveguemos hacia la ruta "/segunda", crearemos el Widget SegundaPantalla
      '/segunda': (context) => SegundaPantalla(),
    },
  ));
}

class PrimeraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Pantalla'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Pantalla de Inicio'),
          onPressed: () {
            // Navega a la segunda pantalla usando una ruta con nombre
            Navigator.pushNamed(context, '/segunda');
          },
        ),
      ),
    );
  }
}

class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("segunda Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navega de regreso a la primera pantalla haciendo clic en la ruta actual
            // fuera de la pila
            Navigator.pop(context);
          },
          child: Text('Regresar!'),
        ),
      ),
    );
  }
}
