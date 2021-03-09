import 'package:flutter/material.dart';


class ScrollPage extends StatelessWidget {

  PageController _pageController = new PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: [
          _pagina1(),
          _pagina2()
        ],

      )
      
    );
  }

  _pagina1() {
    return Stack(
      children: [
        _colorFondo(),
        _imagenFondo(),
        _textos(),
        
      ],
    );
  }

  _pagina2() {
    return Container(
      width  : double.infinity,
      height : double.infinity,
      color  : Color.fromRGBO(108,192, 218, 1.0),
      child: Center(
          child: TextButton(
            child: Padding(
              child: Text("Bienvenidos",style: TextStyle(fontSize: 20.0,color:Colors.white)),
              padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 10.0),
            ),
            onPressed: (){
            },
            style: TextButton.styleFrom(
              shape: StadiumBorder(),
              backgroundColor: Colors.blue,
               primary: Colors.white,
               onSurface: Colors.grey,
               elevation: 3.0
            ),
          ),
      ),
    );

  }

  _colorFondo() {
    return Container(
      width  : double.infinity,
      height : double.infinity,
      color  : Color.fromRGBO(108,192, 218, 1.0)
    );
  }

  _imagenFondo() {
    return Container(
      width  : double.infinity,
      height : double.infinity,
      child: Image(
        image: AssetImage('assets/img/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  _textos() {
    final estiloTexto= TextStyle(color:Colors.white,fontSize:50.0 ,fontWeight: FontWeight.bold);
    return SafeArea(
      child: Column(
        children: [
          Text('11°',style: estiloTexto,),
          Text('Miercoles',style: estiloTexto,),
          Expanded(child: Container()),

           GestureDetector(
            child: Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white),
            onTap: (){
              _pageController.animateToPage(
                2, 
                duration: Duration(seconds: 2), 
                curve: Curves.ease
              );
            },
          ),
          
        ],
      ),
    );
  }

}