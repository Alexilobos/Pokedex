import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pokedex",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      //appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, //Centrado del boton
          children: <Widget>[
            const SizedBox(height: 100), //altura del boton
            ElevatedButton(style: style,onPressed: () {}, child: const Text("EMPEZAR"))
          ],
        ),
      ), 
    );
  }
}