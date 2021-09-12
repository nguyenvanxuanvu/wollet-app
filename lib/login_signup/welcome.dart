import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../MyApp.dart';
import 'package:wallet/login_signup/signup.dart';
import 'package:wallet/login_signup/login.dart';
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(52,122,240,1),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 27)),

            Container(
              padding: EdgeInsets.only(top: 15),
              child: Image.asset(
                'assets/photos/logo.png',
                height: 200,
              ),
              //Image.asset('assets/photos/Rectangle-path.png',),
            ),
            //Padding(padding: EdgeInsets.only(top: 6)),
            Text('Welcome to',
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.w100, fontSize: 28),

            ),
            Padding(padding: EdgeInsets.only(top: 3)),
            Text('WHOLLET',
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.w300, fontSize: 48),

            ),
            Padding(padding: EdgeInsets.only(top: 210)),
            FlatButton(
              color: Color.fromRGBO(255, 255, 255, 1),
              padding: EdgeInsets.only(
                  left: 64, right: 64, top: 12, bottom: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 1))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>Login()),
                );
              },
              child: Text(
                'Login',
                style: TextStyle(
                    color: Color.fromRGBO(52, 122, 240, 1),
                    fontSize: 19),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Text(
                  'Don’t have an account?',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.w300),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 15, color: Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
