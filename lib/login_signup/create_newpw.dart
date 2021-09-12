import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet/login_signup/login.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Create_NewPW extends StatefulWidget {
  Create_NewPW({Key? key }) : super(key: key);

  @override
  _Create_NewPWState createState() => new _Create_NewPWState();
}

class _Create_NewPWState extends State<Create_NewPW> {
  bool _isHidden = true;

  TextEditingController _emailController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    bool _isHidden = true;

    //TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController1 = TextEditingController();
    TextEditingController _passwordController2 = TextEditingController();

    void _toggle() {
      setState(() {
        _isHidden = !_isHidden;
      });}
    bool _keyboardIsVisible() {
      return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
    }

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(236, 240, 247, 1),
        title: Column(
          children: [
            //Padding(padding: EdgeInsets.only(top:32)),
            Center(
              child: Text(
                'Create New Password',
                style: TextStyle(
                  color: Color.fromRGBO(13, 31, 60, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                ),
              ),
            ),

          ],
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
          child: Stack(
            children: [


              Positioned(child:
              Column(
                children:<Widget> [
                  Center(
                    child: Text('Your new password must be different from a',
                      style: TextStyle(fontSize: 14,color: Color.fromRGBO(72, 80, 104, 1)),),
                  ),
                  Center(
                    child: Text('previously used password',
                      style: TextStyle(fontSize: 14,color: Color.fromRGBO(72, 80, 104, 1)),),
                  ),
                ],
              )),
              Positioned(
                width: size.width,
                height:
                !_keyboardIsVisible() ? (size.height) : (size.height * 0.55),
                top: !_keyboardIsVisible() ? 200 : 80,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(23),
                    ),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(children: <Widget>[
                      SingleChildScrollView(
                        child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: TextFormField(
                                  controller: _passwordController1,
                                  obscureText: _isHidden,
                                  obscuringCharacter: '●',
                                  decoration: InputDecoration(
                                    hintText: 'New password',
                                    labelText: 'New password',
                                    suffix: InkWell(
                                      onTap: _toggle,
                                      child: Icon(
                                        Icons.visibility_outlined,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: TextFormField(
                                  controller: _passwordController2,
                                  obscureText: _isHidden,
                                  obscuringCharacter: '●',
                                  decoration: InputDecoration(
                                    hintText: 'Repeat password',
                                    labelText: 'Repeat password',
                                    suffix: InkWell(
                                      onTap: _toggle,
                                      child: Icon(
                                        Icons.visibility_outlined,
                                      ),
                                    ),
                                  ),
                                ),
                              ),


                              Padding(padding: EdgeInsets.only(top: 35)),
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
                                        builder: (context) => Create_NewPW()),
                                  );
                                },
                                child: Text(
                                  'Reset Password',
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              //Padding(padding: EdgeInsets.only(top: 10)),
                            ]
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

