import 'package:flutter/material.dart';

class Principalmenu extends StatefulWidget {
  Principalmenu({Key? key}) : super(key: key);

  @override
  _PrincipalmenuState createState() => _PrincipalmenuState();
}

class _PrincipalmenuState extends State<Principalmenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Container(                             //icono de la upsa
            padding: const EdgeInsets.only(left: 10.0),
            child: ImageIcon(
              AssetImage('assets/background/LogoUpsa.png'),
            ),
          ),
          actions: <Widget>[
            Container(                                   //icono de pokebola
              margin: EdgeInsets.all(5.0),
              child: ImageIcon(
              AssetImage('assets/ui/Pokebola.png')
              ),
            ),
            Container(                                   //numero de id
              child: Center(child: Text('24457id'),)
            ),
            Container(                                   //icono y boton de usuario
              height: 50, width: 75,
              child: IconButton(                                                     //boton pokebola de acceso principal
              icon: Image.asset('assets/ui/UsersPorfile.png'),
              //iconSize: 5,
              onPressed: () {}
              )
            ),
          ],
        ),
      ),
    );
  }
}