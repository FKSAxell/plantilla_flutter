import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plantillas_flutter/src/pages/basico_page.dart';
import 'package:plantillas_flutter/src/pages/botones_page.dart';
import 'package:plantillas_flutter/src/pages/scroll_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //cambiar colores notificaciones
   

    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor:Colors.transparent
      ));

      //  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      //   statusBarColor:Colors.white,
      //   statusBarIconBrightness: Brightness.dark
      // ));
    
    } else if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor:Colors.white
      ));
    }


    

    return MaterialApp(
      title: 'Diseños',
      debugShowCheckedModeBanner: false,
      initialRoute: 'botones',
      routes:{
        'basico': (BuildContext contex) => BasicoPage(),
        'scroll': (BuildContext contex) => ScrollPage(),
        'botones': (BuildContext contex) => BotonesPage(),
      }
      
    );
  }
}