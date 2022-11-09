import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class PerfilUsuario extends StatefulWidget {
  final dk;
  const PerfilUsuario(this.dk, {Key? key}) : super(key: key);

  @override
  State<PerfilUsuario> createState() => _PerfilUsuarioState();
}

class _PerfilUsuarioState extends State<PerfilUsuario> {
  @override
  Widget build(BuildContext context) {
    var k =widget.dk;
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(5),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection("usuario").where('id',isEqualTo:k ).snapshots(),
            builder: (context, snapshot){
              print('KKKKKKKKKKKKK${k}');
             if(snapshot.hasError){
               return Text("Error en la consulta");
        }
             if(!snapshot.hasData){
               return Text("NO existen datos");
        }
             else{

               return ListView.builder(
                 itemCount:snapshot.data?.docs.length,
               itemBuilder: (context, index){
                   QueryDocumentSnapshot usuarioFB=snapshot.data!.docs[index];
                   return Card(
                     elevation: 2,
                       color: Colors.green,
                     child: ListTile(
                       title:  Text("Bienvenido  "+usuarioFB['nombre']+"  "+usuarioFB['apellido'],
                       style: const TextStyle(
                         fontSize: 24,
                           fontFamily: "titulo",
                           fontWeight: FontWeight.bold
                       ),
                       ),
                       subtitle: Text(usuarioFB['correo']+"\n"+usuarioFB['celular']),



                     ),

                   );
               }



               );
        }

        }
          )
        ),
      ),
    );
  }
}
