import 'package:apppaseandoteant/repository/registrousuariofirebase.dart';
import 'package:apppaseandoteant/vistas/registrobdusuario.dart';
import 'package:apppaseandoteant/vistas/tituloprincipal.dart';
import 'package:apppaseandoteant/vistas/vistalistado.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
class RegistrarUsuario extends StatefulWidget {
  const RegistrarUsuario({Key? key}) : super(key: key);

  @override
  State<RegistrarUsuario> createState() => _RegistrarUsuarioState();
}

class _RegistrarUsuarioState extends State<RegistrarUsuario>{

  RegistroUsuarioFireBase objetorufb=RegistroUsuarioFireBase();
  final usuario=TextEditingController();
  final clave=TextEditingController();
  String usu="";
  String cla="";
  void registrarUsuario()async{
    usu=usuario.text;
    cla=clave.text;
    final datos =await objetorufb.registrarUsuario(usu, cla);
    if(datos=="weak-password"){
      Fluttertoast.showToast(msg: "La contraseña debe tener minimo 6 caracteres",toastLength: Toast.LENGTH_SHORT,gravity:ToastGravity.CENTER );
    }
    else if(datos=="email-already-in-use"){
      Fluttertoast.showToast(msg: "El Email ya existe",toastLength: Toast.LENGTH_SHORT,gravity:ToastGravity.CENTER );

    }
    else if(datos=="invalid-email"){

      Fluttertoast.showToast(msg: "El Email no en  valido",toastLength: Toast.LENGTH_SHORT,gravity:ToastGravity.CENTER );

    }
    else if(datos=="network-request-failed"){
      Fluttertoast.showToast(msg: "No hay conexión con internet",toastLength: Toast.LENGTH_SHORT,gravity:ToastGravity.CENTER );
    }
    else if(datos=="user-not-found"){

    }
    else {
      var pk=datos;
      print('Datos de  la PK${pk}');
      Fluttertoast.showToast(msg: "Datos registrados",toastLength: Toast.LENGTH_SHORT,gravity:ToastGravity.CENTER );
      Navigator.push(context, MaterialPageRoute(builder: (context)=>RigistroBDUsuario(pk)));
    }

    print(datos);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage('imgenes/fondoregistro.jpeg')
              // image:AssetImage('imgenes/fondoperronew.jpeg')
            )
        ),
        child: Scaffold(
        backgroundColor: Colors.transparent,
          body:Padding(
            padding: EdgeInsets.all(2),
            child: ListView(
              children: [
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 250,

                      child: Titulo(),
                      margin: EdgeInsets.only(bottom:10 )
                  ),
                ),
                Center(
                  child: Container(
                      child: Text('Ingresa tus datos ',
                      style: TextStyle(
                        fontSize: 25,
                            fontFamily: 'titulo',
                        fontWeight: FontWeight.bold,
                          color:Colors.cyan

                      ),),
                      margin: EdgeInsets.only(bottom:20 )
                  ),
                ),

                txtusuario(),
                txtclave(),
                btnlogin(),
              ],


            ),
          ),
        ),
      ),
    );




  }

  Container  txtusuario(){
    return Container(

        width: 300,
        height: 100,

        child:   TextFormField(
          controller: usuario,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email'),
        ),





    );
  }

  Container  txtclave(){
    return Container(

        width: 400,
        height: 100,


        child:TextFormField(
          controller: clave,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password'),
        ),



    );
  }

  ElevatedButton  btnlogin(){
    return ElevatedButton(

      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),


        ),

          backgroundColor: Color(0xff58ff08).withOpacity(0.2)

      ),
      child: Text('Ingresar',
        style: TextStyle(
            fontSize: 24,
            color: Colors.white
        ),
      ),
      onPressed: ()  {
      registrarUsuario() ;


      },

    );


  }



}


