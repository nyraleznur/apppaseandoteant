import 'package:flutter/material.dart';



class Titulo extends StatefulWidget {
  const Titulo ({Key? key}) : super(key: key);

  @override
  State<Titulo> createState() => _State();
}

class _State extends State<Titulo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
       Expanded(
      child: Container(
          width: 200,
          height: 210,
          margin: EdgeInsets.only(left: 10,right: 5),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('imgenes/logopas.png')
              )

          ),

        ),
      ),
    Container(
    width: 300,
    height: 100,


    margin: EdgeInsets.only(top: 40),
    child: Text("Paseándote",
    style: TextStyle(
      shadows:
        [

          Shadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            color: Color.fromRGBO(9, 246, 229, 1),
          )

        ],
    fontSize: 45,
    fontWeight: FontWeight.bold,
    fontFamily: 'titulo',
    color: Colors.white


    ),
    textAlign: TextAlign.left,
    ),

    ),

],
);
  }
}


