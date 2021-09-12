import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet/login_signup/enterpin.dart';
import 'package:wallet/login_signup/forgot_pw.dart';
import 'package:wallet/login_signup/login.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CheckEmail extends StatefulWidget {
  CheckEmail({Key? key }) : super(key: key);

  @override
  _CheckEmailState createState() => new _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {

  @override
  Widget build(BuildContext context) {
    bool _keyboardIsVisible() {
      return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
    }

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(236, 240, 247, 1),
        title: Center(
          child: Text(
            'Check Your Email',
            style: TextStyle(
              color: Color.fromRGBO(13, 31, 60, 1),
              fontWeight: FontWeight.w600,
              fontSize: 26,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: SvgPicture.asset(
                'assets/photos/back.svg',height: 200,
                color: Color.fromRGBO(13, 31, 60, 1),
              ), // Put icon of your preference.
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      backgroundColor: Color.fromRGBO(236, 240, 247, 1),
      body: Container(
          child: Column(
            children: [
              Center(
                child: Text('Follow a password recovery instructions we have',
                  style: TextStyle(fontSize: 14,color: Color.fromRGBO(72, 80, 104, 1)),),
              ),
              Center(
                child: Text('just sent to your email address',
                  style: TextStyle(fontSize: 14,color: Color.fromRGBO(72, 80, 104, 1)),),
              ),
              SizedBox(
                height: 90,
              ),
              Positioned(
                top: 0,
                width: size.width,
                //padding: EdgeInsets.only(top: 15),
                child: Container(
                  width: size.width,
                  child: Center(
                    child: Image.asset(
                      'assets/photos/email.png',
                      height: 200,
                    ),
                  ),
                ),
                //Image.asset('assets/photos/Rectangle-path.png',),
              ),
              SizedBox(
                height: 160,
              ),
              FlatButton(
                color: Color.fromRGBO(52, 122, 240, 1),
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
                        builder: (context) => Login()),
                  );
                },
                child: Text(
                  'Back to Login',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
              ),


            ],
          )),
    );
  }
}

