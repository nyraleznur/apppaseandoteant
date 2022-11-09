
import 'dart:convert';
import 'package:apppaseandoteant/modelo/usuario.dart';
import 'package:apppaseandoteant/repository/registrousuariofirebase.dart';
import 'package:apppaseandoteant/vistas/login.dart';
import 'package:apppaseandoteant/vistas/tituloprincipal.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
class RigistroBDUsuario extends StatefulWidget {
  final idusuario;
  const RigistroBDUsuario(this.idusuario,{Key? key}) : super(key: key);

  @override
  State<RigistroBDUsuario> createState() => _RigistroBDUsuarioState();
}

class _RigistroBDUsuarioState extends State<RigistroBDUsuario> {
  RegistroUsuarioFireBase objufb=RegistroUsuarioFireBase();
  final _nombre=TextEditingController();
  final _apellido=TextEditingController();
  final _correo=TextEditingController();
  final _celular=TextEditingController();
  //void _registrarUsuario(Usuario usuario)async{

  //}


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image:AssetImage('imgenes/fondoregistro.jpeg')
            // image:AssetImage('imgenes/fondoperronew.jpeg')
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                  child: Titulo(),
                  ),
                  Center(
                    child: Container(
                        child: Text('Completa tu registro',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'titulo',
                              fontWeight: FontWeight.bold,
                              color:Colors.cyan

                          ),),
                        margin: EdgeInsets.only(bottom:20 )
                    ),
                  ),



                  TextFormField(
                    controller: _nombre,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nombre'),
                     ),
                   SizedBox(
                     height: 16,

                   ),
              TextFormField(
                controller: _apellido,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Apellido'),
              ),
              SizedBox(
                height: 16,

              ),
                  TextFormField(
                    controller: _correo,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Correo'),
                  ),
                  SizedBox(
                    height: 16,

                  ),
                  TextFormField(
                    controller: _celular,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'celular'),
                  ),
                  SizedBox(
                    height: 16,

                  ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),


                          ),

                          backgroundColor: Color(0xff58ff08),

                        ),
                        onPressed: ()async{
                            final idusuario=widget.idusuario;
                             var usuario=Usuario(idusuario,_nombre.text,_apellido.text,_correo.text,_celular.text);
                            // _registrarUsuario(usuario);
                            var resultado=await objufb.crearUsuario(usuario);

                            Fluttertoast.showToast(msg: "Datos guardados",toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.CENTER);
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));


                        },
                        child: Text("Registrate"),

                      )
                ],
              ),
            ),
          ),


        )
      ),
    );
  }
}
