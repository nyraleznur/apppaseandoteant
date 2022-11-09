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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Expanded(
         child: Container(
           child: Titulo(),
         ),
       ),
        Expanded(
          child: Container(
            height: 30,
            width: 182,
            margin: EdgeInsets.only(bottom: 10),
            child: botonUno(),
          ),
        ),
        Expanded(child:
        Container(
          height: 30,
          width: 200,
          margin: EdgeInsets.only(bottom: 10),
          child: botonDos(),
        ),
        ),
        Expanded(
          child: Container(
            width: 240,
            margin: EdgeInsets.only(bottom: 10),
             child: botonTres(),
          ),
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


