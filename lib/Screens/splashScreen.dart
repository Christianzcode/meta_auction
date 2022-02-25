import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meta_auction/Screens/Auth/logIn.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushNamedAndRemoveUntil(context,'LogIn',  (Route<dynamic> route) => false)
    );
  }
  @override
  Widget build(BuildContext context) {
    // var mediaQueryHeight = MediaQuery.of(context).size.height;
    // var mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
        body: Center(
          child: Image.asset('assets/images/logo.png', ),
        )
    );
  }
}