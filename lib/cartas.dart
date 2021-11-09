import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CardWidget extends StatefulWidget {
  CardWidget({
    Key? key,
    this.maintext = "",
    this.textcolor = Colors.black,
    this.backgroungcolor = Colors.white,
    this.imagenpresentacion = '',
    }) : super(key: key);

    final Color textcolor;  //color de texto
    final String imagenpresentacion;  //imagen de pokemon
    final String maintext;  //nombre del pokemon
    final Color backgroungcolor;  //color de fondo
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('holaa');
      },
      child: Container(
        width: 135.0,
        height: 110.0,
        margin: EdgeInsets.only(right: 5.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
                child: Container(
                  width: 130.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    color: widget.backgroungcolor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0,bottom: 10.0),
                      child: Text(
                        widget.maintext,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Montserrat',
                          color: widget.textcolor,
                        ),
                      ),
                    ),
                  ),
                )
            ),
            Align(
              
              alignment: Alignment.topCenter,
              child: Image.network(widget.imagenpresentacion,width: 80,),
            ),
          ],
        )
      ),
    );
  }
}