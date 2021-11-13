import 'package:flutter/material.dart';
import 'package:pokedex_tercer_parcial/presentacionpokemons.dart';
import 'perfilUsers.dart';

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
              child: Center(child: Text('7819 #'),)
            ),
            PopupMenuButton(                                    //icono y boton de usuario
              color: Colors.purple[50],
              child: Image.asset('assets/ui/UsersPorfile.png'),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Container(
                    child:
                    TextButton(
                      child: Text("Perfil"),
                      onPressed: () => Navigator.push(
                        context,MaterialPageRoute(builder: (context){return PerfilUsers();})
                      ),
                    )
                  )
                ),
                PopupMenuItem(
                  child: Container(
                    child:
                    TextButton(
                      child: Text("Creditos"),
                      onPressed: () {},
                    )
                  )
                ),
              ]
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background/FondoNavegations.png"),
              fit: BoxFit.cover,
            ),
          ),
          child:Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 220), 
                  child: OutlinedButton(
                    child: Text("Pokemones"),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(200,80),
                      primary: Colors.white,
                      backgroundColor: Colors.red[400],
                      elevation: 5,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    onPressed: () => Navigator.push(
                        context,MaterialPageRoute(builder: (context){return AllPokemon();})
                      ),
                  ),
                ),
              ],
            ),
          )
        )
    );
  }
}
