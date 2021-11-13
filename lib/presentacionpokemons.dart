import 'package:flutter/material.dart';
import 'package:pokedex_tercer_parcial/cartas.dart';
import 'package:pokedex_tercer_parcial/models/ApiServicePokemon.dart';
import 'package:pokedex_tercer_parcial/models/pokemon.dart';
import 'package:pokedex_tercer_parcial/principalprueba2.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=> Navigator.push(
            context,MaterialPageRoute(builder: (context){return Principalmenuprueba2();})
          ),
        ),
        backgroundColor: Colors.grey[700],
        title: Text("Pokemons", 
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[ 
          Container(
            padding: const EdgeInsets.only(right: 30.0),
            child: ImageIcon(
              AssetImage('assets/ui/Pokeballicon.png'),
            ),
          ),
        ],
        centerTitle: true,
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
                    pokemon: pokemon
                  );
                },
              );
            } else if(snapshot.hasError) {
              return Text("Error");
            }
            return Center(child:  Text("Loading..."));
          },
        ),
      ),
    );
  }
}
