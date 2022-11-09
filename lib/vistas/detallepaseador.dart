import 'package:apppaseandoteant/modelo/paseador.dart';
import 'package:flutter/material.dart';


class DetallePaseador extends StatefulWidget {
  final Paseador paseador;
  const DetallePaseador(this.paseador,{Key? key}) : super(key: key);

  @override
  State<DetallePaseador> createState() => _DetallePaseadorState();
}

class _DetallePaseadorState extends State<DetallePaseador> {
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
            ],
          ),
        )
      ),


    );
  }
}
