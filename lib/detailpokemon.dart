import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_tercer_parcial/models/ApiServicePokemon.dart';
import 'package:pokedex_tercer_parcial/models/pokemon.dart';
import 'models/pokemon.dart';

class DetailPokemons extends StatefulWidget {
  DetailPokemons({
    Key? key,
    this.pokemon,
    }) : super(key: key);
  
  final Pokemon? pokemon;

  @override
  _DetailPokemonsState createState() => _DetailPokemonsState();

  Stack bodyWidget(BuildContext context) {
      
      var typelist = <Widget>[
        Container(
          child: FilterChip(
            backgroundColor: Colors.amber,
            label: Text(pokemon!.type1),
            selected: false,
            onSelected: (bool value){},
          ),
        ),
      ]; 
      if (pokemon!.type2 != "None") {
        typelist.add(
          Container(
            child: FilterChip(
              backgroundColor: Colors.amber,
              label: Text(pokemon!.type2),
              selected: false,
              onSelected: (bool value){},
           ),
          )
        );
      }

      return Stack(
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
                  height: 70.0,
                ),
                Text(
                  pokemon!.nombre,
                  style:
                      TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                //Text("Height: ${pokemon.height}"),
                //Text("Weight: ${pokemon.weight}"),
                Text(
                  "Types",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: typelist
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("")
              )
            ),
          )
        )
      ],
    );
  }
}

class _DetailPokemonsState extends State<DetailPokemons> {
  ApiService service = ApiService();
  late Future<List<Pokemon>> futurepokemons;

  @override
  void initState(){
    super.initState();
    futurepokemons = service.getData();
  }

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.cyan,
        title: Text("Detail Pokemon"),
      ),
      body: widget.bodyWidget(context),
    );
  }
}