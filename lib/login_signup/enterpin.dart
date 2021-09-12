import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EnterPin extends StatefulWidget {
  const EnterPin({Key? key}) : super(key: key);

  @override
  _EnterPinState createState() => _EnterPinState();
}

class _EnterPinState extends State<EnterPin> {
  String _password = "";

  void addString(String index) {
    setState(() {
      if (_password.length < 4) _password += index.toString();
      if (_password.length == 4) {

      }
    });
  }

  void removeString() {
    setState(() {
      if (_password.length > 0)
        _password = _password.substring(0, _password.length - 1);
    });
  }

  // ignore: non_constant_identifier_names


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 240, 247, 1),
      appBar: buildAppBar(),
      body: Column(
        children: <Widget>[
          Text(
            "Please enter your PIN to proceed",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 4; i++)
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: i < _password.length
                          ? Color(0xFF75BF72)
                          : Color(0xFF9EA5B1),
                    ),
                  ),
                )
            ],
          ),
          Spacer(),

        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color.fromRGBO(236, 240, 247, 1),
      title: Text("Verification Required",style: TextStyle(
        color: Color.fromRGBO(13, 31, 60, 1),
        fontWeight: FontWeight.w600,
        fontSize: 26,
      ),),
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
    );
  }
}