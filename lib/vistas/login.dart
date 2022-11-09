import 'package:apppaseandoteant/vistas/perfilusuario.dart';
import 'package:apppaseandoteant/vistas/tituloprincipal.dart';
import 'package:apppaseandoteant/vistas/vistalistado.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>{
  FirebaseAuth  firebaseAuth=FirebaseAuth.instance;
  final usuario=TextEditingController();
  final clave=TextEditingController();
  String usu="";
  String cla="";
  @override
  Widget build(BuildContext context) {
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
          backgroundColor: Colors.transparent,
          body:Padding(
            padding: EdgeInsets.all(8),
        child: ListView(
        children: [
          Container(
            child: Titulo(),
            margin: EdgeInsets.only(bottom:30 )
          ),


           Container(
               child:txtusuario(),
        ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: txtclave()),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(top: 40),
            child: btnlogin(),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ],


        ),
        ),
        ),
      ),
    );




  }

  Container  txtusuario(){
    return Container(
        child:TextFormField(
        style: (TextStyle(fontSize: 20,
        fontFamily: 'txt'
          )
        ),
        decoration: InputDecoration(
          hintText: 'Usuario',
          hintStyle: TextStyle(
              color:Colors.black12
          ),
           labelText: "User",
            labelStyle: TextStyle(
                fontSize:20 ,
                color: Colors.white
            )
        ),
        controller: usuario,
      )



    );
  }

  Container  txtclave(){
    return Container(


        child:TextFormField(
          style: (TextStyle(fontSize: 20)
          ),
          decoration: InputDecoration(

              hintText: 'Clave',
              hintStyle: TextStyle(
                color:Colors.black12
              ),
              labelText: "Password",
              labelStyle: TextStyle(
                fontSize:20 ,
                    color: Colors.white
              )
          ),
          controller: clave,
        )



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

      onPressed: () async {
        usu=usuario.text;
        cla=clave.text;
        Fluttertoast.showToast(msg: "Datos no se encotraron ",toastLength:Toast.LENGTH_LONG,gravity: ToastGravity.TOP_LEFT );
        try {
          final datos = await firebaseAuth.signInWithEmailAndPassword(
              email: usu, password: cla);
          print(datos);
          if (datos != null) {
             var k=(FirebaseAuth.instance.currentUser?.uid);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PerfilUsuario(k))
            );
          }
        }catch(e){
            Fluttertoast.showToast(msg: "Datos no se encotraron ",toastLength:Toast.LENGTH_LONG,gravity: ToastGravity.TOP_LEFT );
        }
      },

    );


  }




}


