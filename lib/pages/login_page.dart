import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matcher/matcher.dart';
import 'package:sindri/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Login'),
          ),
          body: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 20.0,
                      spreadRadius: 5.0,
                      offset: Offset(5.0, 5.0))
                ],
                color: Color.fromARGB(255, 23, 202, 133),
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 50),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /*Image.asset(
                'assets/logosindri.png',
                height: 120,
              ),*/
                  Text(
                    'Formulario de Login', //Login form
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(hintText: 'user@correo.com'),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'password'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: FlatButton(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 100),
                  Text('¿Nuevo por aquí? Create una cuenta')
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
