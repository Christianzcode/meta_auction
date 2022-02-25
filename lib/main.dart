import 'package:flutter/material.dart';
import 'package:meta_auction/Screens/Settings/change_password.dart';
import 'package:meta_auction/Screens/Settings/settings.dart';
import 'package:meta_auction/Screens/Auth/forgot_pass.dart';
import 'package:meta_auction/Screens/Auth/logIn.dart';
import 'package:meta_auction/Screens/Auth/reset_password_check.dart';
import 'package:meta_auction/Screens/Auth/sign_up.dart';
import 'package:meta_auction/Screens/favorites.dart';
import 'package:meta_auction/Screens/filter&sort.dart';
import 'package:meta_auction/Screens/home_page.dart';
import 'package:meta_auction/Screens/see_all.dart';
import 'package:meta_auction/Screens/splashScreen.dart';




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
        primaryColor:const Color.fromRGBO(91, 63, 112, 1),
      ),
      initialRoute: 'SplashScreen',
      routes: {
        'SplashScreen': (context) =>  SplashScreen(),
        'LogIn': (context) =>  LogIn(),
        'SignUp': (context) =>  SignUp(),
        'ForgotPassword': (context) =>  ForgotPassword(),
        'ResetPasswordCheck': (context) =>  ResetPasswordCheck(),
        'HomePage': (context) =>  HomePage(),
        'Settings': (context) =>  Settings(),
        'ChangePassword': (context) =>  ChangePassword(),
        'ResetPasswordCheck': (context) =>  ResetPasswordCheck(),
        'Filter': (context) =>  FilterAndSort(),
        'SeeAll': (context) =>  SeeAll(),
        'Favorites': (context) =>  Favorites(),
      },
    );
  }
}