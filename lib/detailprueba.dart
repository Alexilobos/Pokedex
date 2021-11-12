
import 'package:flutter/material.dart';
import 'package:pokedex_tercer_parcial/models/pokemon.dart';
import 'package:pokedex_tercer_parcial/utils/utils.dart';

class PokeDetail extends StatelessWidget {
  final Pokemon pokemon;

  PokeDetail({required this.pokemon});

  bodyWidget(BuildContext context) => Stack(
    children: <Widget>[
      Positioned(
        height: MediaQuery.of(context).size.height / 1.5,
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
                height: 85.0,
              ),
              Text(
                pokemon.nombre,
                style:
                    TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              Text(
                "Stats",
                style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
              ),
              ListTile(
                contentPadding: EdgeInsetsDirectional.only(start: 100.0),
                leading: Icon(Icons.favorite,color: Colors.red,),
                title: Text("hp: " + pokemon.hp.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold)
                ),
              ),
              ListTile(
                contentPadding: EdgeInsetsDirectional.only(start: 100.0),
                leading: Icon(Icons.outbond,color: Colors.green,),
                title: Text("Att: " + pokemon.ataque.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold)
                ),
              ),
              ListTile(
                contentPadding: EdgeInsetsDirectional.only(start: 100.0),
                leading: Icon(Icons.shield,color: Colors.grey,),
                title: Text("Def: " + pokemon.defensa.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              Text(
                "Types",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: FilterChip(
                      backgroundColor: Colors.red[300],
                      label: Text(
                        pokemon.type1,
                        style: TextStyle(fontWeight: FontWeight.bold)
                      ),
                      selected: false,
                      onSelected: (bool value){},
                    ),
                  ),
                  Container(
                    child: FilterChip(
                      backgroundColor: Colors.lightBlue[300],
                      label: Text(
                        pokemon.type2,
                        style: TextStyle(fontWeight: FontWeight.bold)
                      ),
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
          tag: "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/" + Utils.getFilledString(pokemon.id) + ".png",
          child: Container(
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover, 
                image: NetworkImage("https://assets.pokemon.com/assets/cms2/img/pokedex/detail/" + Utils.getFilledString(pokemon.id) + ".png")
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
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.cyan,
        title: Text("Detail Pokemon",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: bodyWidget(context),
    );
  }
}