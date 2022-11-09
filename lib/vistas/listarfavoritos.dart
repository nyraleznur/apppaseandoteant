import 'package:apppaseandoteant/Boxes.dart';
import 'package:apppaseandoteant/modelo/paseadorfavorito.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class ListarFavoritos extends StatefulWidget {
  const ListarFavoritos({Key? key}) : super(key: key);

  @override
  State<ListarFavoritos> createState() => _ListarFavoritosState();
}

class _ListarFavoritosState extends State<ListarFavoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child:_builListView(),
        ),
      ),
    );
  }
  Widget _builListView(){
    return ValueListenableBuilder<Box<Paseadorf>>(
      valueListenable: Boxes.getfavoritosbox().listenable(),
      builder: (context, box, _){
        final paseadorBox=box.values.toList().cast<Paseadorf>();
        return ListView.builder(

    itemCount: paseadorBox.length,
    itemBuilder: (BuildContext context, i) {
      final pass=paseadorBox[i];




    return Container(
    margin: EdgeInsets.only(top:20),
    child: Card(
    color: Colors.pink,
    child: Column(
    children: [


    Container(

    margin: EdgeInsets.only(bottom: 50,top: 50),
    child: ListTile(
    title: Text(pass.nombre ?? ""),
    subtitle: Text(pass.apellido ?? ""),



    ),
    )
        ]
    )

    ),
    );
    }
    );
      }
    );
  }
}
