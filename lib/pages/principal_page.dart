import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:get/get.dart';
import 'package:sindri/pages/registro_page.dart';
import 'package:sindri/pages/login_page.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PrincipalPage extends StatelessWidget {
  _scroll() {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(1),
        ),
        SizedBox(
          height: 15,
        ),
        CarouselSlider(
          items: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    spreadRadius: 2.0,
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage("assets/images/1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    spreadRadius: 2.0,
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage("assets/images/2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    spreadRadius: 2.0,
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage("assets/images/3.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    spreadRadius: 2.0,
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage("assets/images/4.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            height: 190.0,
            autoPlay: true,
            autoPlayCurve: Curves.easeInOut,
            enlargeCenterPage: true,
            autoPlayInterval: Duration(seconds: 3),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  _buttons() {
    return Row(
      children: [
        Text(
          'Hola, soy Sindri', //Center text
          style: TextStyle(
              fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 100), //Separación
        Row(
          children: [
            Expanded(
                child: RaisedButton(
                    color: Colors.green, //button color
                    child: Text(
                      'Registrar',
                      //style: stily,
                    ),
                    onPressed: () {
                      Get.to(RegistroPage(), transition: Transition.fade);
                    })), //left button
            SizedBox(
              width: 5,
            ),
            Expanded(
                child: RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      'Login',
                      //style: stily,
                    ),
                    onPressed: () {
                      Get.to(LoginPage(), transition: Transition.zoom);
                    })), //right button
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('COMIDAAAA'),
          Expanded(
            child: _scroll(),
          ),
          /*Flexible(
            flex: 2,
            child: _scroll(),
          ),
          Flexible(
            flex: 3,
            child: Container(color: Colors.black26),
          ),
          Flexible(
            flex: 1,
            child: _buttons(),
          )*/
          _scroll(),
          _buttons(),
        ],
      ),
    );
  }
}



//DE línea 20 a línea 57 /*mainAxisAlignment: MainAxisAlignment.end,
/*
          children: [
            Text(
              'Hola, soy Sindri', //Center text
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 100), //Separación
            Row(
              children: [
                Expanded(
                    child: RaisedButton(
                        color: Colors.green, //button color
                        child: Text(
                          'Registrar',
                          style: stily,
                        ),
                        onPressed: () {
                          Get.to(RegistroPage(), transition: Transition.fade);
                        })), //left button
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: RaisedButton(
                        color: Colors.blue,
                        child: Text(
                          'Login',
                          style: stily,
                        ),
                        onPressed: () {
                          Get.to(LoginPage(), transition: Transition.zoom);
                        })), //right button
              ],
            )
          ],*/