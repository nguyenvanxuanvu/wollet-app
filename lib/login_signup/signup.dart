import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet/login_signup/enterpin.dart';
import 'package:wallet/login_signup/forgot_pw.dart';
import 'package:wallet/login_signup/forgot_pw.dart';
class SignUp extends StatefulWidget {
  SignUp({Key? key }) : super(key: key);

  @override
  _SignUpState createState() => new _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isHidden = true;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  void _toggle() {
    setState(() {
      _isHidden = !_isHidden;
    });}
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
            'Create Account',
            style: TextStyle(
              color: Color.fromRGBO(13, 31, 60, 1),
              fontWeight: FontWeight.w600,
              fontSize: 26,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(236, 240, 247, 1),
      body: Container(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                width: size.width,
                //padding: EdgeInsets.only(top: 15),
                child: Container(
                  width: size.width,
                  child: Center(
                    child: Image.asset(
                      'assets/photos/office.png',
                      height: 200,
                    ),
                  ),
                ),
                //Image.asset('assets/photos/Rectangle-path.png',),
              ),
              Positioned(
                width: size.width,
                height:
                !_keyboardIsVisible() ? (size.height) : (size.height * 0.55),
                top: !_keyboardIsVisible() ? 200 : 0,
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
                                controller: _firstNameController,
                                decoration: InputDecoration(
                                  hintText: 'First Name',
                                  labelText: 'First Name',
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: TextFormField(
                                controller: _lastNameController,
                                decoration: InputDecoration(
                                  hintText: 'Last Name',
                                  labelText: 'Last Name',
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: TextFormField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  hintText: 'Email address',
                                  labelText: 'Email address',
                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: TextFormField(
                                controller: _passwordController,
                                obscureText: _isHidden,
                                obscuringCharacter: '???',
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  labelText: 'Password',
                                  suffix: InkWell(
                                    onTap: _toggle,
                                    child: Icon(
                                      Icons.visibility_outlined,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 20)),
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
                                      builder: (context) => EnterPin()),
                                );
                              },
                              child: Text(
                                'Let???s Get Started',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            //Padding(padding: EdgeInsets.only(top: 10)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Don???t have an account?',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(72, 80, 104, 1),
                                      fontWeight: FontWeight.w400),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUp( )),
                                    );
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(52, 122, 240, 1),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            )
                          ],
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

