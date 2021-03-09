import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
                _imagen(),
                _titulo(),
                _acciones(),
                _texto(),
                _texto(),
                _texto(),
                _texto(),
                _texto(),
                _texto(),
              ],
            )
          ),
      );
  }

  _imagen() {
    return Container(
      width: double.infinity,
      child: Image(
          height: 250.0,
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://capturelandscapes.com/wp-content/uploads/2017/03/DSC2441-Panorama.jpeg')
        ),
    );
  }

  _titulo() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Montaña nocturna',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text('Una montaña en Ecuador', style: estiloSubTitulo)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0)),
          ],
        ),
      ),
    );
  }

  _acciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call,'CALL'),
        _accion(Icons.near_me,'ROUTE'),
        _accion(Icons.share,'SHARE'),
      ],
    );


  }

  _accion(IconData icon, String msj) {

    return Column(
      children: [
        Icon(icon,color:Colors.lightBlue, size: 40.0,),
        SizedBox(height: 7.0,),
        Text(msj, style: TextStyle(color:Colors.lightBlue,fontSize: 15.0)),
      ],
    );
  }

  _texto(){
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0,),
        child: Text(
          "Irure consectetur officia ex proident ad cupidatat deserunt aliqua pariatur occaecat velit elit minim. Ipsum quis officia id exercitation ex ad Lorem laboris nostrud eiusmod ad mollit cupidatat pariatur. In Lorem magna irure nulla culpa do eiusmod quis elit.",
          style: TextStyle(fontSize: 18.0),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}

/*
pickart
sockets
single time on
*/
