import 'package:apppaseandoteant/vistas/drawablemenu.dart';
import 'package:apppaseandoteant/vistas/vistalistado.dart';
import 'package:apppaseandoteant/vistas/vistaprincipal.dart';
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
      home: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('imgenes/fondoregistro.jpeg'),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.cyanAccent.withOpacity(0.3),
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(60.0),



            child: AppBar(



              title: (
            Text("Bienvenid@",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              fontFamily: "titulo",
                color:Colors.white
            ),)
            ),
              elevation: 0,


              backgroundColor: Colors.lightBlueAccent.withOpacity(0.5),
            ),
          ),
          drawer: DrawableMenu(),
          body: Padding(

            padding: EdgeInsets.all(5),
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection("usuario").where('id',isEqualTo:k ).snapshots(),
              builder: (context, snapshot){
      
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
                     return Column(
                       children: [
                         Container(
                           margin: EdgeInsets.only(top:1 ),
                           decoration: BoxDecoration(
                             color: Colors.lightBlueAccent.withOpacity(0.5),
                             borderRadius: BorderRadius.only(
                               bottomLeft: Radius.circular(80.0),

                             ),
                             boxShadow: [
                             BoxShadow(
                               color: Colors.cyanAccent.withOpacity(0.5),
                               offset: Offset(-8,0),
                               blurRadius: 20,
                               spreadRadius: 4),
                   ],
                   ),
                        padding: EdgeInsets.only(left: 40,top: 30,bottom: 30,right: 10),

                                 



                             child: ListTile(
                               title:  Text("Bienvenid@\n "+usuarioFB['nombre']+"  "+usuarioFB['apellido'],
                               style: const TextStyle(
                                 fontSize: 22,
                                   fontFamily: "titulo",
                                   fontWeight: FontWeight.bold
                               ),

                               ),
                               subtitle: Text(usuarioFB['correo']+"\n"+usuarioFB['celular'],
                               style: TextStyle(
                                 fontSize: 20,
                                 color: Colors.purpleAccent
                               ),),



                             ),

                           ),


                         Container(

                             margin: EdgeInsets.only(top:40 ),
                             decoration: BoxDecoration(
                               color: Colors.lightBlueAccent.withOpacity(0.5),
                               borderRadius: BorderRadius.only(
                                 bottomRight: Radius.circular(80.0),

                               ),
                               boxShadow: [
                                 BoxShadow(
                                     color: Colors.cyanAccent.withOpacity(0.5),
                                     offset: Offset(-8,0),
                                     blurRadius: 20,
                                     spreadRadius: 4),
                               ],
                             ),
                             padding: EdgeInsets.only(left: 40,top: 30,bottom: 30,right: 10),
                           child:ListTile(
                             title:Text("Conoce aquí nuestros paseadores",
                             style:TextStyle(
                               fontSize: 22,
                               fontFamily: "titulo",
                               color: Colors.purpleAccent,
                               fontWeight: FontWeight.bold
                             )
                             ),
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=> ListaPaseadores()));
                             },

                           )
                         ),

                   Container(

                   margin: EdgeInsets.only(top:10 ),
                   decoration: BoxDecoration(
                   color: Colors.purpleAccent.withOpacity(0.6),
                   borderRadius: BorderRadius.only(
                   bottomRight: Radius.circular(80.0),

                     topLeft: Radius.circular(90)

                   ),
                   boxShadow: [
                   BoxShadow(
                   color: Colors.cyanAccent.withOpacity(0.5),
                   offset: Offset(-8,0),
                   blurRadius: 20,
                   spreadRadius: 4),
                   ],
                   ),
                       padding: EdgeInsets.only(left: 40,top: 30,bottom: 30,right: 10),
                       child:ListTile(
                         title:Text("Agenda un paseo para tu peludito",
                             style:TextStyle(
                                 fontSize: 22,
                                 fontFamily: "titulo",
                                 color: Colors.indigo,
                                 fontWeight: FontWeight.bold
                             )
                         ),
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> ListaPaseadores()));
                         },

                       )
                   )
                       ],
                     );
                 }



                 );
          }

          }
            )
          ),
        ),
      ),
    );
  }
}
