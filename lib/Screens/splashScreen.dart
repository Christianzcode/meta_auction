import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meta_auction/Screens/Auth/logIn.dart';
import 'package:meta_auction/Screens/Auth/sign_up.dart';
import 'package:meta_auction/Screens/Home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
              LogIn()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 300,),
              Image.asset('assets/images/logo.png', ),

            ],
          ),
        )
    );
  }
}