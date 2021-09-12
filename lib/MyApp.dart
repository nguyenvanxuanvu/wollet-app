


import 'boarding/onboarding_1.dart';

import 'package:flutter/material.dart';
import 'package:wallet/boarding/onboarding_1.dart';
class MyApp extends StatelessWidget {

  MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet app',
      theme: ThemeData(

      ),
      home: Onboarding1(),
    );
  }
}