import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final titleSignup = Column(
      children: [
        Text("Registro", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        SizedBox(height: 20,),
        Text("Crear una cuenta, Es Gratis!!",style: TextStyle(fontSize: 15, color: Colors.grey[700],),),
        SizedBox(height: 30,)
      ],
    );

    final emailFieldSingUp = TextField(
      obscureText: false,
      style: style,
      
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "example@dominio.com",
        border: 
        OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
      ),
    );

    final passwordFieldSingUp = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Contraseña",
        border: 
          OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
      ),
    );

    final confirmPasswordFieldSingUp = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Confirmar Contraseña",
        border: 
          OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
      ),
    );


    final loginButtonSingUp = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Registrar",
          textAlign: TextAlign.center,
          style: style.copyWith(
            color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
      ),
    );


    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                titleSignup,
                SizedBox(height: 45.0),
                emailFieldSingUp,
                SizedBox(height: 25.0),
                passwordFieldSingUp,
                SizedBox(height: 35.0),
                confirmPasswordFieldSingUp,
                SizedBox(height: 35.0),
                loginButtonSingUp,
                SizedBox(height: 15.0),

              ],
            ),
          ),
        ),
      ),
    );
  }
}