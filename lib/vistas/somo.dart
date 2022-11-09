import 'package:flutter/material.dart';

class Somos extends StatelessWidget {
  const Somos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),

      body:SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              _cardUno(),
              _cardDos(),

              _cardTres()

            ],
          ),
        ),

      )
      ),
    );
  }
  Widget _cardUno(){
    return Card(
      elevation: 10,
      color: Colors.transparent,
      child:  Container(
        color: Colors.blue,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Paseándote",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              fontFamily: 'text',
              color: Colors.white
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black

            ),
            ),

            
          ],
        ),
      ),
    );
  }

  Widget _cardDos(){
    return Card(
      elevation: 10,
      child: Container(

        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ClipRRect(
            borderRadius:BorderRadius.circular(150),

          child:   FadeInImage(placeholder: AssetImage('imgenes/perrocopeqmas.jpeg'),
                image: AssetImage('imgenes/perrocopeqmas.jpeg')
            )
            ),
            Text('Pasendo a tu pelidito el sera feliz')
          ],
        ),
      ),
      
    );
  }
  Widget _cardTres(){
    return Card(
      elevation: 10,
      color: Colors.purple,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      
      child:  Container(

        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Paseándote",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontFamily: 'text',
                  color: Colors.white
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black

              ),
            ),


          ],
        ),
      ),
    );
  }

}
