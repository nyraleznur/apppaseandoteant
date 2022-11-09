import 'package:apppaseandoteant/firebase_options.dart';
import 'package:apppaseandoteant/modelo/paseadorfavorito.dart';
import 'package:apppaseandoteant/vistas/login.dart';
import 'package:apppaseandoteant/vistas/vistalistado.dart';
import 'package:apppaseandoteant/vistas/vistaprincipal.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options:DefaultFirebaseOptions.currentPlatform  );
           await Hive.initFlutter();
           Hive.registerAdapter(PaseadorfAdapter());
           await Hive.openBox<Paseadorf>('bd');


         // await Hive.registerAdapter());




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
