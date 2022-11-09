import 'package:apppaseandoteant/vistas/somo.dart';
import 'package:flutter/material.dart';
class DrawableMenu extends StatelessWidget {
  const DrawableMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      width: 260,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(50, 0, 255, 0), Color(0xffffffff)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )

        ),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              padding: EdgeInsets.only(bottom: 20),
              margin: EdgeInsets.only(top: 50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: FadeInImage(
                  
                  placeholder: AssetImage('imgenes/logodogbig.png'),
                  image: AssetImage('imgenes/logodogbig.png'),
                ),
              ),
              ),
              Text("Paseándote",
              style: TextStyle(
                shadows: [
                  Shadow(
                          offset: Offset(3, 3),
                    blurRadius: 7,
                      color:Color.fromARGB(200, 0, 255, 255)

                  )
                ],
                fontSize: 35,
                fontFamily: "titulo",
                  color:Colors.white,
                fontWeight: FontWeight.bold
              ),
              ),
             GestureDetector(
               child: Container(
                 width: double.infinity,
                 padding: EdgeInsets.all(10),
                 margin: EdgeInsets.only(bottom: 5, top: 5),
                 color: Color.fromARGB(200, 255, 255, 255),
                 child: Text("Somos",
                 style: TextStyle(
                   fontSize: 30,
                   color:Colors.black,
                   fontFamily: "titulo",

                 ),
                 ),



               ),
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Somos()));
               },


             ),
            GestureDetector(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 5, top: 5),
                color: Color.fromARGB(200, 255, 255, 255),
                child: Text("Somos",
                  style: TextStyle(
                    fontSize: 30,
                    color:Colors.black,
                    fontFamily: "titulo",

                  ),
                ),



              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Somos()));
              },


            )
          ],
        ),
      ),

    );
  }
}
