//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pokedex_tercer_parcial/cartas.dart';
import 'package:pokedex_tercer_parcial/models/ApiServicePokemon.dart';
import 'package:pokedex_tercer_parcial/models/pokemon.dart';
import 'package:pokedex_tercer_parcial/utils/utils.dart';

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
        backgroundColor: Colors.grey[700],
        leading: Container(
          padding: const EdgeInsets.only(left: 10.0),
          child: ImageIcon(
            AssetImage('assets/ui/Pokeballicon.png'),
          ),
        ),
        centerTitle: true,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
            child: TextFormField(
              cursorColor: Colors.black,
              //keyboardType: inputType,
              autocorrect: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {},
                ),
                hintText: 'Search Pokemon...',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
        ),
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
                    backgroungcolor: UtilsColors.getBackgroundColor(pokemon.type1),
                    imagenpresentacion: "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/" + Utils.getFilledString(pokemon.id) + ".png",
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
