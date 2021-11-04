import 'package:flutter/material.dart';
import 'package:pokedex_tercer_parcial/principal.dart';

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
          decoration: BoxDecoration(                                              //fondo de presentacion principal
              image: DecorationImage(
                image: AssetImage('assets/background/Principal.png'),
                fit: BoxFit.fitHeight
              )
          ),
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
            Stack(children: <Widget>[                                                 //estilo de letra o titulo principal
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
              child: IconButton(                                                     //boton pokebola de acceso principal
                splashColor: Colors.red[200],                                                  
                icon: Image.asset('assets/ui/MasterBall.png',height: 100,width: 100),
                iconSize: 90,
                onPressed: () {
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context) => Principalmenu())
                  );
                },
              ),
            ),
          ]),
        )
    );
  }
}
