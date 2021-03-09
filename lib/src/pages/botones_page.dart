import 'package:flutter/material.dart';
class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp()
        ],
      ),
      
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
            Colors.red,
            Colors.blue
          ]

        )
      ),
    );

    return Stack(
      children: [
        gradiente
      ],
    );

  }

}