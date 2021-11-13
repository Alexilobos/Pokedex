import 'package:flutter/material.dart';

class PerfilUsers extends StatelessWidget {
  //final Usuario usuario;

  //PokeDetail({this.pokemon});

  bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 1.3,
            width: MediaQuery.of(context).size.width - 20,
            left: 10.0,
            top: MediaQuery.of(context).size.height * 0.1,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 165.0,
                  ),
                  Text("Alexi Lobos",
                    /*pokemon!.nombre,*/
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Detalles",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    contentPadding: EdgeInsetsDirectional.only(start: 100.0),
                    leading: Icon(Icons.favorite,color: Colors.red,),
                    title: Text("Edad:  18"),
                  ),
                  ListTile(
                    contentPadding: EdgeInsetsDirectional.only(start: 10.0),
                    leading: Icon(Icons.outbond,color: Colors.green,),
                    title: Text("Correo: loboalexis2001@gmail.com"),
                  ),
                  ListTile(
                    contentPadding: EdgeInsetsDirectional.only(start: 40.0),
                    leading: Icon(Icons.shield,color: Colors.grey,),
                    title: Text("Cumpleaño: 4 Septiembre"),
                  ),

                  Text(
                    "Equipo",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: FilterChip(
                          backgroundColor: Colors.blue[800],
                          label: Text("Azul"/*pokemon!.type1*/),
                          selected: false,
                          onSelected: (bool value){},
                        ),
                      ),
                      Container(
                        child: FilterChip(
                          backgroundColor: Colors.red,
                          label: Text("Rojo"/*pokemon!.type2*/),
                          selected: false,
                          onSelected: (bool value){},
                        ),
                      )
                    ], 
                  ),

                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
                tag: "assets/background/PerfilUserPerson.png",
                child: Container(
                  height: 200.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover, 
                        image: NetworkImage("assets/background/PerfilUserPerson.png")
                      )
                  ),
                )
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Detail Perfil"),
      ),
      body: bodyWidget(context),
    );
  }
}