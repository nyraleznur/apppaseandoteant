import 'package:apppaseandoteant/vistas/googlemaps.dart';
import 'package:apppaseandoteant/vistas/login.dart';
import 'package:apppaseandoteant/vistas/registrobdusuario.dart';
import 'package:apppaseandoteant/vistas/registrousuario.dart';
import 'package:apppaseandoteant/vistas/somo.dart';
import 'package:apppaseandoteant/vistas/tituloprincipal.dart';
import 'package:flutter/material.dart';



class VistaPrincipal extends StatefulWidget {
  const VistaPrincipal({Key? key}) : super(key: key);

  @override
  State<VistaPrincipal> createState() => _VistaPrincipalState();
}

class _VistaPrincipalState extends State<VistaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
       Container(

         child: Titulo(),
       ),

        Container(
          height: 50,
          width: double.infinity,

          margin: EdgeInsets.only(top:30,bottom: 30),
          child: botonUno(),
        ),
        Container(
          height: 50,
          width: double.infinity,
          margin: EdgeInsets.only(top:30,bottom: 30),
          child: botonDos(),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top:30,bottom: 30),
           child: botonTres(),
        )
      ],
    );
  }

 ElevatedButton  botonUno(){
    return ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent
          ),
      child:const Text("Somos",
        style: TextStyle(
            shadows:
            [
              Shadow(
                offset: Offset(3, 3),
                blurRadius: 7,
                color: Color.fromRGBO(254, 254, 244, 1),
              ),
            ],
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: 'contenidos',
            color: Colors.amber
        ),
        textAlign: TextAlign.left,
      ),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Somos())) ;
      },
    );
 }

  ElevatedButton  botonDos(){
    return ElevatedButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.transparent

      ),
      child:const Text('Ingresar',
        style: TextStyle(
            shadows:
            [

              Shadow(
                offset: Offset(3, 3),
                blurRadius: 7,
                color: Color.fromRGBO(254, 254, 244, 1),
              ),

            ],
            fontFamily: 'contenido',
            fontSize: 35,
            color: Colors.amber
        ),
      ),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login())
        );
      },

    );
  }

  ElevatedButton botonTres(){
    return ElevatedButton(
      style: TextButton.styleFrom(
         backgroundColor: Colors.transparent
      ),
      child:const Text('Regístrate',
        style: TextStyle(
            shadows:
            [
             Shadow(
                offset: Offset(3, 3),
                blurRadius: 7,
                color: Color.fromRGBO(254, 254, 244, 1),
              ),

            ],
            fontFamily: 'contenido',
            fontSize: 35,
            color: Colors.amber
        ),
      ),
      onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrarUsuario())) ;
      },

    );
  }
}


