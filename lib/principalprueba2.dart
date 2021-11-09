import 'package:flutter/material.dart';
import 'package:pokedex_tercer_parcial/presentacionpokemons.dart';

//import 'cartas.dart';

class Principalmenuprueba2 extends StatefulWidget {
  Principalmenuprueba2({Key? key}) : super(key: key);

  @override
  _Principalmenuprueba2State createState() => _Principalmenuprueba2State();
}

class _Principalmenuprueba2State extends State<Principalmenuprueba2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: ElementoCuerpo(),
      ),
    );
  }
}


class ElementoCuerpo extends StatefulWidget {
  ElementoCuerpo({Key? key}) : super(key: key);

  @override
  _ElementoCuerpoState createState() => _ElementoCuerpoState();
}

class _ElementoCuerpoState extends State<ElementoCuerpo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[400],
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
            PopupMenuButton(                                    //icono y boton de usuario
              color: Colors.purple[50],
              child: Image.asset('assets/ui/UsersPorfile.png'),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Container(
                    child:
                    TextButton(
                      child: Text("Primercosa"),
                      onPressed: () {},
                    )
                  )
                ),
                PopupMenuItem(
                  child: Container(
                    child:
                    TextButton(
                      child: Text("Segundacosa"),
                      onPressed: () {},
                    )
                  )
                ),
                PopupMenuItem(
                  child: Container(
                    child:
                    TextButton(
                      child: Text("Tercercosa"),
                      onPressed: () {},
                    )
                  )
                ),
              ]
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20), 
                child: OutlinedButton(
                  child: Text("Pokemones"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(200,80),
                    primary: Colors.white,
                    backgroundColor: Colors.yellow[300],
                    elevation: 5,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,MaterialPageRoute(builder: (context) => AllPokemon())
                    );
                  },
                ),
              ),
                            Container(
                margin: EdgeInsets.all(20), 
                child: OutlinedButton(
                  child: Text("Favorite"),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(200,80),
                    primary: Colors.white,
                    backgroundColor: Colors.purple[300],
                    elevation: 5,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () {
                    print("hola1");
                  },
                ),
              )

            ],
          ),
        )
    );
  }
}





//barra de busqueda
  /*flexibleSpace: FlexibleSpaceBar(
      centerTitle: true,
      background: Image.network(
        'assets/background/PrincipalNavegation.png',fit: BoxFit.cover,
      ),
    ),*/
