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
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background/Principal.png'),
                  fit: BoxFit.fitHeight)),
          child: Inicio(),
        ));
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
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Stack(children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(bottom: 100.0),
                  child: Text(
                "POKEDEX",
                style: TextStyle(
                    //borde del texto
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.red[700]!),
              )),
              Container(
                  margin: const EdgeInsets.only(bottom: 100.0),
                  child: Text(
                      //texto solido como relleno
                      "POKEDEX",
                      style: TextStyle(fontSize: 40, color: Colors.grey[400])))
            ]),
            Container(
              margin: const EdgeInsets.only(bottom: 170.0),
              child: IconButton(
                icon: Image.asset('assets/ui/Pokebola.png'),
                iconSize: 70,
                onPressed: () {},
              ),
            ),
          ]),
        )
    );
  }
}
