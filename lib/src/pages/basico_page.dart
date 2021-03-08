import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo =TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold);
  final estiloSubTitulo =TextStyle(fontSize: 18.0,color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Image(
            image: NetworkImage('https://capturelandscapes.com/wp-content/uploads/2017/03/DSC2441-Panorama.jpeg')
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
            
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Expanded(
                                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Montaña nocturna',style:estiloTitulo,),
                      SizedBox(height: 7.0,),
                      Text('Una montaña en Ecuador',style:estiloSubTitulo)
                    ],
                  ),
                ),

                Icon(
                  Icons.star,
                  color:Colors.red,
                  size:30.0
                ),

                Text('41', style: TextStyle(fontSize: 20.0)),



              ],
            ),
          )
        ],
      )
      
    );
  }
}





/*
pickart
sockets
single time on
*/