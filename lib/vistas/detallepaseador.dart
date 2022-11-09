import 'package:apppaseandoteant/Boxes.dart';
import 'package:apppaseandoteant/modelo/geo.dart';
import 'package:apppaseandoteant/modelo/paseador.dart';
import 'package:apppaseandoteant/modelo/paseadorfavorito.dart';
import 'package:apppaseandoteant/vistas/googlemaps.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class DetallePaseador extends StatefulWidget {
  final Paseador paseador;
  const DetallePaseador(this.paseador,{Key? key}) : super(key: key);

  @override
  State<DetallePaseador> createState() => _DetallePaseadorState();
}

class _DetallePaseadorState extends State<DetallePaseador> {
  
  void _favoritos()async{
    var pasfavorito=Paseadorf()
    ..nombre=widget.paseador.nombre
        ..apellido=widget.paseador.apellido
        ..correo=widget.paseador.correo
        ..celular=widget.paseador.celular;
    final box=Boxes.getfavoritosbox();
    box.add(pasfavorito);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Paseador"),
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.network(
                    widget.paseador.imagen

                  ),
                ),
                
                
              ),
              IconButton(
                  icon:Icon(Icons.favorite),
              color: Colors.grey,
                onPressed: ((){
                  Fluttertoast.showToast(msg: "Tu favorito",toastLength: Toast.LENGTH_LONG,gravity: ToastGravity.CENTER);
                  _favoritos();
                }),
              ),
              
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(widget.paseador.nombre+" "+widget.paseador.apellido,
                  style: const TextStyle(
                    fontSize: 30,
                    fontFamily: "titulo",
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: double.infinity,

                margin: EdgeInsets.only(top: 30),
                child: Text("Email: "+widget.paseador.correo+"\n "+"Celular: "+widget.paseador.celular,
                  style: const TextStyle(
                    fontSize: 22,
                    fontFamily: "titulo",

                  ),
                ),
              ),
              Container(
                width: double.infinity,

                margin: EdgeInsets.only(top: 30),
                child: Text(widget.paseador.descripcion,
                  style: const TextStyle(
                    fontSize: 22,
                    fontFamily: "titulo",

                  ),
                ),
              ),
              ListTile(
                title: Container(
                  width: double.infinity,

                  margin: EdgeInsets.only(top: 30),
                  child: Text(widget.paseador.direccion,
                    style: const TextStyle(
                      fontSize: 22,
                      fontFamily: "titulo",
                    ),
                  ),

                ),
                onTap: (){
                  DatosGeolocalizacion loc=DatosGeolocalizacion(double.parse(widget.paseador.longitud), double.parse(widget.paseador.latitud), widget.paseador.direccion);
                  Navigator.push((context), MaterialPageRoute(builder: (context)=>Geolocalizacion(loc)));
                },
              ),
            ],
          ),
        )
      ),


    );
  }
}
