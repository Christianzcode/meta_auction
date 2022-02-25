import 'package:flutter/material.dart';
import 'package:meta_auction/Screens/Auth/forgot_pass.dart';
import 'package:meta_auction/Screens/splashScreen.dart';
import 'package:meta_auction/model/watch.dart';

import 'Tab Bar/tab_bar.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome Screen',
      theme: ThemeData(
        primaryColor:Color.fromRGBO(91, 63, 112, 1),


      ),
      home: SplashScreen()
      //
      // TabDetails(watch: Watch(
      //   brand:'Rolex',
      //   year:2022,
      //   condition:'New',
      //   dialcolor:'Silver',
      //   metal:'Steel',
      //   status:'Returned',
      //   lastbid:'20.000 USD',
      //   country:'USA',
      //   date:DateTime.now(),
      //   images: 'assets/images/watches.png',
      //   favorite:false ,
      // ),),
    );
  }
}