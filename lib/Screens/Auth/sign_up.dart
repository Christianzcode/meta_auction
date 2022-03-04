import 'package:flutter/material.dart';
import 'package:meta_auction/Screens/home_page.dart';

class SignUp extends StatefulWidget {
  const SignUp();

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: mediaQueryHeight * 0.10,
            title: const Center(
              child: Text("REGISTER ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center),
            ),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: mediaQueryHeight * 0.05,),
                  child: const Text(
                    'Create Your Account',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mediaQueryHeight * 0.05,
                      vertical: mediaQueryWidth * 0.05),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      label: Text.rich(
                        TextSpan(children: <InlineSpan>[
                          WidgetSpan(
                            child: Text(
                              'Username ',
                              style: TextStyle(fontFamily: 'Roboto-Regular'),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mediaQueryHeight * 0.05,
                      vertical: mediaQueryWidth * 0.05),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      label: Text.rich(
                        TextSpan(children: <InlineSpan>[
                          WidgetSpan(
                            child: Text(
                              'Email ',
                              style: TextStyle(fontFamily: 'Roboto-Regular'),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: mediaQueryHeight * 0.05,
                    vertical: mediaQueryWidth * 0.05,),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      label: Text.rich(
                        TextSpan(children: <InlineSpan>[
                          WidgetSpan(
                            child: Text(
                              'Password ',
                              style: TextStyle(fontFamily: 'Roboto-Regular'),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mediaQueryHeight * 0.05,
                      vertical: mediaQueryWidth * 0.05),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      label: Text.rich(
                        TextSpan(children: <InlineSpan>[
                          WidgetSpan(
                            child: Text(
                              'Phone',
                              style: TextStyle(fontFamily: 'Roboto-Regular'),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top:mediaQueryHeight * 0.05,),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, 'HomePage', (Route<dynamic> route) => false);
                    },
                    child: const Text(
                      ' SIGN  UP ',
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
                      'Already have an account ?',
                      style: TextStyle(color: Colors.black45),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'LogIn');
                        },
                        child:  Text(
                          "SIGN IN",
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
          )),
    );
  }
}
