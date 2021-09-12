import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../MyApp.dart';
import 'onboarding_1.dart';
import 'onboarding_3.dart';
import 'package:wallet/login_signup/welcome.dart';
class Onboarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 240, 247, 1),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 27)),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Welcome()),
                  );
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 19, color: Color.fromRGBO(52, 122, 240, 1)),
                ),
              ),
            ]),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Image.asset(
                'assets/photos/idea.png',
                height: 200,
              ),
              //Image.asset('assets/photos/Rectangle-path.png',),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            Expanded(
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(23),
                      ),),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Image.asset(
                        'assets/photos/step2.png',
                      ),
                      Padding(padding: EdgeInsets.only(top: 25)),
                      Text('Nice and Tidy Crypto',
                          style: TextStyle(fontSize: 36)),
                      Padding(padding: EdgeInsets.only(top: 1)),
                      Text('Portfolio!', style: TextStyle(fontSize: 36)),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Text('Keep BTC, ETH, XRP, and many other',
                          style: TextStyle(fontSize: 15)),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text('ERC-20 based tokens.',
                          style: TextStyle(fontSize: 15)),
                      Padding(padding: EdgeInsets.only(top: 75)),
                      FlatButton(
                        padding: EdgeInsets.only(
                            left: 64, right: 64, top: 12, bottom: 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(
                                color: Color.fromRGBO(52, 122, 240, 1))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Onboarding3()),
                          );
                        },
                        child: Text(
                          'Next Step',
                          style: TextStyle(
                              color: Color.fromRGBO(52, 122, 240, 1),
                              fontSize: 19),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
