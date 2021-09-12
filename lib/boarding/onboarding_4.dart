import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../MyApp.dart';
import 'onboarding_3.dart';
import 'package:wallet/login_signup/welcome.dart';
class Onboarding4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 240, 247, 1),
      body:

      Center(


        child: Column(


          children:<Widget> [

            Padding(padding: EdgeInsets.only(top: 27)),

            Container(
              padding: EdgeInsets.only(top: 15),
              child:
              Image.asset('assets/photos/mobile.png',height: 200,),
              //Image.asset('assets/photos/Rectangle-path.png',),


            ),

            Padding(padding: EdgeInsets.only(top: 82)),
            Expanded(child: Container(
              decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(23),
                ),),

              child:


              SizedBox(
                width: double.infinity,
                child: Column(children:<Widget> [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Image.asset('assets/photos/step4.png',),
                  Padding(padding: EdgeInsets.only(top: 25)),
                  Text('Your Safety is Our',style: TextStyle( fontSize: 36)),
                  Padding(padding: EdgeInsets.only(top: 1)),
                  Text('Top Priority',style: TextStyle( fontSize: 36)),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text('Our top-notch security features will keep',style: TextStyle( fontSize: 15)),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text('you completely safe.',style: TextStyle( fontSize: 15)),
                  Padding(padding: EdgeInsets.only(top: 75)),
                  FlatButton(
                    color: Color.fromRGBO(52, 122, 240, 1),
                    padding: EdgeInsets.only(left: 64,right: 64,top: 12, bottom: 12),
                    shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Color.fromRGBO(52, 122, 240, 1))
                    ),
                    onPressed: (){

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Welcome()),
                      );
                    }, child: Text('Let\'s Get Started',
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1), fontSize: 19),

                  ),)
                ],),
              ),


            ),),




          ],

        ),
      ),

    );
  }
}
