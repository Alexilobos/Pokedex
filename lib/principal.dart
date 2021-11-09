import 'package:flutter/material.dart';

class Principalmenu extends StatefulWidget {
  Principalmenu({Key? key}) : super(key: key);

  @override
  _PrincipalmenuState createState() => _PrincipalmenuState();
}

class _PrincipalmenuState extends State<Principalmenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ElementoCuerpo(),
        appBar: AppBar(
          backgroundColor: Colors.red[400],
          leading: Container(                             //icono de la upsa
            padding: const EdgeInsets.only(left: 10.0),
            child: ImageIcon(
              AssetImage('assets/background/LogoUpsa.png'),
            ),
          ),
          actions: <Widget>[
            Container(                                   //icono de pokebola
              margin: EdgeInsets.all(5.0),
              child: ImageIcon(
              AssetImage('assets/ui/Pokebola.png')
              ),
            ),
            Container(                                   //numero de id
              child: Center(child: Text('24457id'),)
            ),
            PopupMenuButton(                                    //icono y boton de usuario
              color: Colors.purple[50],
              child: Image.asset('assets/ui/UsersPorfile.png'),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Container(
                    child:
                    TextButton(
                      child: Text("Primercosa"),
                      onPressed: () {},
                    )
                  )
                ),
                PopupMenuItem(
                  child: Container(
                    child:
                    TextButton(
                      child: Text("Segundacosa"),
                      onPressed: () {},
                    )
                  )
                ),
                PopupMenuItem(
                  child: Container(
                    child:
                    TextButton(
                      child: Text("Tercercosa"),
                      onPressed: () {},
                    )
                  )
                ),
              ]
            )
          ],
        ),
      ),
    );
  }
}


class ElementoCuerpo extends StatefulWidget {
  ElementoCuerpo({Key? key}) : super(key: key);

  @override
  _ElementoCuerpoState createState() => _ElementoCuerpoState();
}

class _ElementoCuerpoState extends State<ElementoCuerpo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder:
          (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 250.0,
                floating: true,
                pinned: true,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.network(
                    'assets/background/PrincipalNavegation.png',fit: BoxFit.cover,
                  ),
                ),
                automaticallyImplyLeading: false,
                bottom: AppBar(                                 //barra de busqueda
                  title: Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.white,
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for something',
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Center(//child: Text("Sample text"
            child: new ListView(
              children: <Widget>[
                new Container(
                  height: 150.0,
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    children: new List.generate(
                      5, (int index) {
                        return new Card(
                          color: Colors.blue[index * 100],
                          child: new Container(
                            width: 150.0,
                            height: 120.0,
                            child: new Text("$index"),
                          ),
                        );
                      }
                    ),
                  ),
                ),

                new Container(
                  height: 110.0,
                  child: Center(
                    child: new ListView(
                      scrollDirection: Axis.horizontal,
                      children: new List.generate(
                        4, (int index) {
                          return new Card(
                            color: Colors.red[index * 100],
                            child: new Container(
                              width: 82.0,
                              height: 90.0,
                              child: new Text("$index"),
                            ),
                          );
                        }
                      ),
                    ),
                  )
                ),
                new Container(
                  height: 110.0,
                  child: Center(
                    child: new ListView(
                      scrollDirection: Axis.horizontal,
                      children: new List.generate(
                        4, (int index) {
                          return new Card(
                            color: Colors.yellow[index * 100],
                            child: new Container(
                              width: 82.0,
                              height: 90.0,
                              child: new Text("$index"),
                            ),
                          );
                        }
                      ),
                    ),
                  )
                ),
                new Container(
                  height: 110.0,
                  child: Center(
                    child: new ListView(
                      scrollDirection: Axis.horizontal,
                      children: new List.generate(
                        4, (int index) {
                          return new Card(
                            color: Colors.yellow[index * 100],
                            child: new Container(
                              width: 82.0,
                              height: 90.0,
                              child: new Text("$index"),
                            ),
                          );
                        }
                      ),
                    ),
                  )
                ),
                new Container(
                  height: 110.0,
                  child: Center(
                    child: new ListView(
                      scrollDirection: Axis.horizontal,
                      children: new List.generate(
                        3, (int index) {
                          return new Card(
                            color: Colors.purple[index * 100],
                            child: new Container(
                              margin: const EdgeInsets.only(left: 12),
                              width: 98.0,
                              height: 90.0,
                              child: new Text("$index"),
                            ),
                          );
                        }
                      ),
                    ),
                  )
                ),
              ]
            ),
          )
      )
    );
  }
}
