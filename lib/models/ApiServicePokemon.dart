import 'dart:convert';
import 'package:pokedex_tercer_parcial/models/pokemon.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String url = "https://pokemon2021.azurewebsites.net/api/pokemons";
  
  Future<List<Pokemon>> getData() async{
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type' : 'application/json',
      'Accept' : 'application/json',
    });

    if (response.statusCode == 200) {
      var jsonResponce = jsonDecode(response.body);
      List<Pokemon> pokemons = [];
      for (var model in jsonResponce) {
        Pokemon pokemon = Pokemon.fromJson(model);
        pokemons.add(pokemon);
      }
      return pokemons;
    } else{
      throw Exception('Error al llamar al API');
    }
  }
}