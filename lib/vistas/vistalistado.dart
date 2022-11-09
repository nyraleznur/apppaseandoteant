import 'package:flutter/material.dart';



class ListaPaseadores extends StatefulWidget {
  const ListaPaseadores({Key? key}) : super(key: key);

  @override
  State<ListaPaseadores> createState() => _ListaPaseadoresState();
}

class _ListaPaseadoresState extends State<ListaPaseadores> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: ListView(
        children: [
          Container(
            child: Text("Listado de paseadores"),


          ),

          Container(
            color: Color.fromARGB(150, 255, 0, 0),

            child: ListTile(
              title: Text("Titulo del list"),
              subtitle: Text("contenido"),
              leading: Icon(
                Icons.add_location_alt_sharp,
                color: Colors.green,
              ),
            ),
          ),

          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 5),
               child: ListTile(
              title: Text("Titulo del list"),
              subtitle: Text("contenido"),
              leading: Icon(
                Icons.add_location_alt_sharp,
                color: Colors.green,
              ),
            ),
          ),
        ],




      ),
      )
    );
  }
}
