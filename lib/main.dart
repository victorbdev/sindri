//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sindri/pages/principal_page.dart';
import 'package:sindri/pages/login_page.dart';
import 'package:sindri/pages/registro_page.dart';
//import 'package:sindri/pages/carrusel_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/principal',
      getPages: [
        GetPage(name: '/principal', page: () => PrincipalPage()),
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/registro', page: () => RegistroPage()),
        //GetPage(name: '/carrusel', page: () => CarruselPage()),
      ],
      /*title: 'Flutter demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _login(),*/
    );
  }
}
