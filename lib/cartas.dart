import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_tercer_parcial/models/pokemon.dart';
//import 'package:pokedex_tercer_parcial/detailpokemon.dart';

import 'detailprueba.dart';
import 'utils/utils.dart';


class CardWidget extends StatefulWidget {
  CardWidget({
    Key? key,
    required this.pokemon
  }) : super(key: key);

    final Pokemon pokemon;  //color de texto
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PokeDetail(pokemon: widget.pokemon)),       
        );
      },
      child: Container(
        width: 135.0,
        height: 110.0,
        margin: EdgeInsets.only(left: 5.0,right: 5.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
                child: Container(
                  width: 150.0,
                  height: 160.0,
                  decoration: BoxDecoration(
                    color: UtilsColors.getBackgroundColor(widget.pokemon.type1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.0,bottom: 35.0),
                      child: Text(
                        widget.pokemon.nombre,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )
            ),
            Align(
              alignment: Alignment(0.10 , -0.50),
              child: Image.network(
                "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/" + Utils.getFilledString(widget.pokemon.id) + ".png",
                width: 80,
              ),
            ),
          ],
        )
      ),
    );
  }
}