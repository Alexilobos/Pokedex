//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pokedex_tercer_parcial/cartas.dart';
//import 'package:pokedex_tercer_parcial/cartas.dart';
import 'package:pokedex_tercer_parcial/models/ApiService.dart';
import 'package:pokedex_tercer_parcial/models/pokemon.dart';

class AllPokemon extends StatefulWidget {
  AllPokemon({Key? key}) : super(key: key);

  @override
  _AllPokemonState createState() => _AllPokemonState();
}

class _AllPokemonState extends State<AllPokemon> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: CuerpoPokemones(),
      ),
    );
  }
}

class CuerpoPokemones extends StatefulWidget {
  CuerpoPokemones({Key? key}) : super(key: key);

  @override
  _CuerpoPokemonesState createState() => _CuerpoPokemonesState();
}

class _CuerpoPokemonesState extends State<CuerpoPokemones> {
  ApiService service = ApiService();
  late Future<List<Pokemon>> futurepokemons;  
  
  @override
  void initState(){
    super.initState();
    futurepokemons = service.getData();
  }
  Color getBackgroundColor(String type1){
    Map<String, Color> colors = {
      'grass': Colors.green[300]!,
      'fire': Colors.red[300]!,
      'water': Colors.lightBlueAccent[200]!,
      'bug': Colors.lightGreen[300]!,
      'normal': Colors.grey[400]!,
      'poison': Colors.purple[300]!,
      'electric': Colors.yellow[300]!,
      'ground': Colors.amber[200]!,
      'fairy': Colors.pink[200]!,
      'fighting': Colors.blueGrey,
      'psychic': Colors.pinkAccent,
      'rock': Colors.brown[300]!,
      'ghost': Colors.indigo[300]!,
      'ice': Colors.lightBlueAccent[100]!,
      'dragon': Colors.deepPurple[200]!,
      'dark': Colors.brown,
      'steel': Colors.blueGrey[200]!,
      'flyin': Colors.lightBlue[300]!,
    };
    return colors[type1.toLowerCase()]!;
  }

  String getImageUrl(int id){
    String strid = id.toString(); 
    String newstrid = "";
    for (var i = strid.length; i < 4; i++) {
      newstrid = strid.padLeft(i,"0");
    }
    return newstrid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        leading: Container(
          padding: const EdgeInsets.only(left: 10.0),
          child: ImageIcon(
            AssetImage('assets/ui/Pokeballicon.png'),
          ),
        ),
        centerTitle: true,
        title: Text(
          "POKÉDEX",
        ),
        actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.only(right: 20.0),
            icon: Icon(Icons.search),
            onPressed: () {
              print("hola buscador");
            },
          )
        ],
      ),
      body: Container(
        child: FutureBuilder<List<Pokemon>>(
          future: futurepokemons,
          builder:  (context, AsyncSnapshot snapshot){
            if(snapshot.hasData){
              return GridView.builder(
                itemCount: snapshot.data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10, //espacio cuadro entre lados
                  mainAxisSpacing: 10,  //espacio cuadro de arriba a bajo
                  //CardWidget()
                ),
                itemBuilder: (context, index) {
                  Pokemon pokemon = snapshot.data[index];
                  return CardWidget(
                    maintext: pokemon.nombre,
                    textcolor: Colors.black,
                    backgroungcolor: getBackgroundColor(pokemon.type1),
                    imagenpresentacion: "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/" + getImageUrl(pokemon.id) + ".png",
                  );
                },
              );
            } else if(snapshot.hasError) {
              return Text("Error");
            }
            return Text("Loading...");
          },
        ),
      ),
    );
  }
}
