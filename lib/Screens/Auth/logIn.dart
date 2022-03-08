import 'package:flutter/material.dart';
import 'package:meta_auction/Screens/Auth/forgot_pass.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String password = '', confirmPassword = '', email = '';

  bool validate() {
    if (formkey.currentState != null) {
      if (formkey.currentState.validate()) {
        if (password == confirmPassword) {
          // ignore: avoid_print

          print('Validated');
          return true;
        }
      } else {
        // ignore: avoid_print
        print('Not validated');
        return false;
      }
    }
    return false;
  }

  String validatePass(value) {
    if (value.trim().isEmpty) {
      return "This field is required";
    }
    if (value.trim().length < 6) {
      return "this field should be at least 6 character";
    }
    if (!RegExp(r"[A-Z]").hasMatch(value) == true ||
        !RegExp(r"[a-z]").hasMatch(value) == true) {
      return "Must have Upper,LowerCase";
    }
    return null;
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text("LOG IN  ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: mediaQueryHeight * 0.01),
                    child: SizedBox(
                        height: mediaQueryHeight * 0.38,
                        width: mediaQueryWidth,
                        child: Image.asset(
                          'assets/images/logo.png',
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: mediaQueryHeight * 0.005,
                        bottom: mediaQueryHeight * 0.02,
                        right: mediaQueryHeight * 0.05,
                        left: mediaQueryWidth * 0.05),
                    child: TextFormField(
                      onSaved: (value) => email = value,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: const InputDecoration(
                        label: Text(
                          'Username or email',
                          style: TextStyle(fontFamily: 'Roboto-Regular'),
                        ),
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: mediaQueryHeight * 0.03,
                        bottom: mediaQueryHeight * 0.02,
                        right: mediaQueryHeight * 0.05,
                        left: mediaQueryWidth * 0.05),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) => password = value,
                      obscureText: _isObscure,
                      controller: passwordController,
                      decoration: InputDecoration(
                        label: Text(
                          'Password',
                          style: TextStyle(fontFamily: 'Roboto-Regular'),
                        ),
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: mediaQueryWidth * 0.07,
                      vertical: mediaQueryHeight * 0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPassword()));
                            },
                            child: const Text(
                              "Forgot password?",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Roboto-Regular',
                                  color: Colors.black),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: mediaQueryHeight * 0.02,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState.validate() == false) {
                          // ignore: avoid_print
                          print('Not Validated');
                          // reset!=null?
                        } else {
                          Navigator.pushNamedAndRemoveUntil(context, 'HomePage',
                              (Route<dynamic> route) => false);
                        }
                      },
                      child: const Text(
                        ' LOG IN ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto-Bold'),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: mediaQueryWidth * 0.25,
                            vertical: mediaQueryHeight * 0.020),
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don t have an account ?',
                        style: TextStyle(color: Colors.black45),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'SignUp');
                          },
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Roboto-Regular',
                              color: Theme.of(context).primaryColor,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
