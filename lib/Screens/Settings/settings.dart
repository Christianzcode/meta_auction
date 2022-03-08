import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'change_password.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool c1;
  bool c2;
  bool c3;

  @override
  void initState() {
    c1 = false;
    c2 = false;
    c3 = false;
  }

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    bool _checkBoxVal = true;

    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                'SETTINGS',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontFamily: 'Roboto-Regular'),
              ),
              backgroundColor: Theme.of(context).primaryColor,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(
                  top: mediaQueryHeight * 0.06,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'ChangePassword');
                  },
                  child: const Card(
                      elevation: 4,
                      child: ListTile(
                        title: Text(
                          'CHANGE PASSWORD',
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 18,
                              fontFamily: 'Roboto-Medium',
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '***********',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 16,
                            fontFamily: 'Roboto-Regular',
                          ),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: mediaQueryHeight * 0.02,
                ),
                child: TextButton(
                    onPressed: () {
                      _onButtonPressed();
                    },
                    child: Text(
                      'SUBSCRIPTION',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black38, fontSize: 17),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: mediaQueryHeight * 0.01,
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                          builder: (_) => AlertDialog(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            title:  Column(
                              children: [
                                Text('Are you sure you want', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontFamily: 'Roboto'),),
                                Text('to sign out?', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontFamily: 'Roboto'),),
                              ],
                            ),
                            actions: [
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal:mediaQueryWidth*0.08),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  TextButton(
                                    child: Text('Cancel', style: TextStyle(
                                      color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Roboto'),),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                    TextButton(
                                    child: Text('Sign Out', style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Roboto'),),
                                    onPressed: () {
                                      Navigator.of(context).pushNamedAndRemoveUntil('LogIn', (route) => false);
                                    },
                                  ),
                                ],),
                              )

                            ],
                          )
                      );
                    },
                    child: Row(
                      children: const [
                        Text(
                          'SIGN OUT',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black38, fontSize: 17),
                        ),
                      ],
                    )),
              ),
            ])));
  }

  void _onButtonPressed() {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    // bool _checkBoxVal = true;
    showModalBottomSheet(
        backgroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
        ),
        context: context,
        builder: (context) {
          // const _ktextStyle = TextStyle(
          //     color: Colors.white,
          //     fontSize: 18,
          //     fontWeight: FontWeight.bold,
          //     fontFamily: 'Roboto-Medium');
          // const _ktext = ['Continue', 'Continue!', 'Continue', 'Continue!'];
          return Container(
              height: mediaQueryHeight * 0.38,
              child: Padding(
                padding: EdgeInsets.only(top: mediaQueryHeight * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQueryWidth * 0.08,
                          vertical: mediaQueryHeight * 0.01),
                      child: SizedBox(
                        height: mediaQueryHeight * 0.18,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: mediaQueryWidth * 0.05),
                                child: RoundCheckBox(
                                  size: 25,
                                  onTap: (selected) {
                                  },
                                  checkedColor: Theme.of(context).primaryColor,
                                  isChecked: false,
                                ),
                              ),
                              Text("10\$/Month",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: mediaQueryWidth * 0.05),
                                child: RoundCheckBox(
                                  size: 25,
                                  onTap: (selected) {
                                  },
                                  checkedColor: Theme.of(context).primaryColor,
                                  isChecked: false,
                                ),
                              ),
                              Text("50\$/ 6 Months",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: mediaQueryWidth * 0.05),
                                child: RoundCheckBox(
                                  size: 25,
                                  onTap: (selected) {
                                  },
                                  checkedColor: Theme.of(context).primaryColor,
                                  isChecked: false,
                                ),
                              ),
                              Text("100\$/ 1 Year",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ]),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: mediaQueryHeight * 0.02,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        // child: AnimatedTextKit(
                        //   animatedTexts: [
                        //     for (final txt in _ktext)
                        //       TypewriterAnimatedText(txt,
                        //           textStyle: _ktextStyle,
                        //           textAlign: TextAlign.start),
                        //   ],
                        //
                        //   repeatForever: true,
                        child: Text('Continue',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto-Medium')),
                        //),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: mediaQueryWidth * 0.1,
                              vertical: mediaQueryHeight * 0.015),
                          primary: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: mediaQueryHeight * 0.02,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'By tapping continue, your payment will be Charged to your Google Play account,',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'and your subscription will automatically renew for the same package length,',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'at the same price until you cancel in settings in the Google Play store. ',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ));
        });
  }
}
