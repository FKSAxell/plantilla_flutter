import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )

        ],
      ),  
    
      bottomNavigationBar:BottomNavigationBar(
        fixedColor: Colors.pink,
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
        showSelectedLabels: false,   // <-- HERE
        showUnselectedLabels: false, 
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), 
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart), 
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle), 
            label: ''
          ),
        ],
      ) ,
    );
  }




  _fondoApp() {

    final gradiente= Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0,0.6),
          end: FractionalOffset(0.0,1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]

        )
      ),
    );


    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0 ,
        width: 360.0,
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            begin: FractionalOffset(0.0,0.6),
            end: FractionalOffset(0.0,1.0),
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          )
        ),
      )
    );
    

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
        )
      ],
    );

  }


  _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Aplicación de Botones',style: TextStyle(color:Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text('Seleccione el boton que más le guste para ver el efecto :) ',style: TextStyle(color:Colors.white,fontSize: 18.0),)
          ],
        ),
      ),
    );
  }


  _botonesRedondeados(){

    return Table(
      children: [
        TableRow(
          children: [
            
            _crearBotonRedondeado(Colors.blue,Icons.border_all,'General'),
            _crearBotonRedondeado(Colors.purpleAccent,Icons.directions_bus,'Bus'),

          ]
        ),
        TableRow(
          children: [
            
            _crearBotonRedondeado(Colors.pinkAccent,Icons.shop,'Buy'),
            _crearBotonRedondeado(Colors.orange,Icons.insert_drive_file,'File'),

          ]
        ),
        TableRow(
          children: [
            
            _crearBotonRedondeado(Colors.blueAccent,Icons.movie_filter,'Movie'),
            _crearBotonRedondeado(Colors.green, Icons.cloud,'Cloud'),

          ]
        ),
        TableRow(
          children: [
            
            _crearBotonRedondeado(Colors.red,Icons.collections,'Fotos'),
            _crearBotonRedondeado(Colors.teal,Icons.help_outline_outlined,'Help'),

          ]
        ),
      ],
    );

  }


  //ICONDATA OJO
  _crearBotonRedondeado(Color color,IconData icono,String texto){



    return Padding(
      padding: EdgeInsets.all(15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: BackdropFilter(
            filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 0.0 ), //sigmaY 0 para borrar lo blanco 
            child: Container(
              height: 180.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox( height: 5.0 ),
                  CircleAvatar(
                    backgroundColor: color,
                    radius: 35.0,
                    child: Icon( icono, color: Colors.white, size: 30.0, ),
                  ),
                  Text( texto , style: TextStyle( color: color )),
                  SizedBox( height: 5.0 ),
                ],
              ),
            ),
          ),
        ),
);
  }

}