import 'package:apppaseandoteant/firebase_options.dart';
import 'package:apppaseandoteant/vistas/login.dart';
import 'package:apppaseandoteant/vistas/vistalistado.dart';
import 'package:apppaseandoteant/vistas/vistaprincipal.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options:DefaultFirebaseOptions.currentPlatform
  );
  runApp(const Inicio());
}

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image:AssetImage('imgenes/paws.jpeg')
             // image:AssetImage('imgenes/fondoperronew.jpeg')
          )
        ),
         child: Scaffold(
            backgroundColor: Colors.transparent,
          body:VistaPrincipal()
        // body:Login()


         ),

      ),


    );
  }
}
