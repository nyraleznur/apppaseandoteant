import 'package:apppaseandoteant/modelo/paseador.dart';
import 'package:apppaseandoteant/vistas/detallepaseador.dart';
import 'package:apppaseandoteant/vistas/drawablemenu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class ListadoPaseadore extends StatefulWidget {
  const ListadoPaseadore({Key? key}) : super(key: key);

  @override
  State<ListadoPaseadore> createState() => _ListadoPaseadoreState();
}

class _ListadoPaseadoreState extends State<ListadoPaseadore> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}



class ListaPaseadores extends StatefulWidget {
  const ListaPaseadores({Key? key}) : super(key: key);

  @override
  State<ListaPaseadores> createState() => _ListaPaseadoresState();
}

class _ListaPaseadoresState extends State<ListaPaseadores> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(

          title: Container(

        
            margin: EdgeInsets.only( left: 50),

            child: Text("Nuestros Paseadores",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.green,
              fontFamily: "titulo",

            ),


            ),
          ),
          elevation: 0,
            backgroundColor: Colors.white,

        ),

        drawer: DrawableMenu(),

        body: Padding(

          padding: const EdgeInsets.all(8.0),
          child: StreamBuilder<QuerySnapshot>(
           stream: FirebaseFirestore.instance.collection("paseadores").snapshots(),
           builder: (context,snapshot) {
             if (snapshot.hasError) {
               return Text("Error en la cosulta");
             }
             if (!snapshot.hasData) {
               return Text("No existen datos");
             }


             child:
             return ListView.builder(
               itemCount: snapshot.data?.docs.length,
               itemBuilder: (context,index) {
                 QueryDocumentSnapshot paseadores = snapshot.data!.docs[index];


                 return Container(
                   margin: EdgeInsets.only(top:20),
                   child: Card(
                     color: Colors.pink,
                     child: Column(
                       children: [


                         Container(

                           margin: EdgeInsets.only(bottom: 50,top: 50),
                           child: ListTile(
                             title: Text(paseadores['nombre']+" "+ paseadores['apellido']),
                             subtitle: Text("Email:  "+paseadores['correo']+" "+"Celular:  "+paseadores['celular']),
                             leading: Image.network(paseadores['imagen'],


                             ),
                             onTap: (){
                               Paseador paseador=Paseador(paseadores["nombre"], paseadores["apellido"], paseadores["correo"], paseadores["celular"], paseadores["imagen"],paseadores["Descripcion"],paseadores["direccion"],paseadores["longitud"],paseadores["latitud"]);
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>DetallePaseador(paseador)));
                             },

                           ),

                         ),

                       ],
                     ),
                   ),
                 );




               }
             );

           }
            ),
        ),
      )
    );
  }
}
