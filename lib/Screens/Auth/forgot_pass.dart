import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta_auction/Screens/Auth/pass_check.dart';

class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  @override
  Widget build(BuildContext context) {
    var _textEditingController = TextEditingController();
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'RESET PASSWORD',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontFamily: 'Roboto-Regular'),
          ),
          backgroundColor: Colors.purple[900],
          leading: Icon(
            Icons.arrow_back,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: mediaQueryHeight * 1,
            child: Column(
              children: [
                SizedBox(
                  height: mediaQueryWidth * 0.2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot Your Password ?',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto-Medium',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: mediaQueryWidth * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Enter your email address and we will send you ',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto-Regular',
                          color: Colors.grey[600]),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'instructions on how to reset your password. ',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto-Regular',
                          color: Colors.grey[600]),
                    )
                  ],
                ),
                SizedBox(height: mediaQueryWidth * 0.2,),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 5,
              ),
              height: mediaQueryHeight * 0.06,
              width: mediaQueryWidth * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.5),
              ),
                  child: TextField(
                    // onChanged: (value) {
                    //   setState(() {
                    //
                    //   });

                    controller: _textEditingController,
                    decoration: InputDecoration(
                      hintText: "Email address",
                      hintStyle: TextStyle(
                          color: Colors.grey[500], fontSize: 17,fontFamily:' Roboto-Regular'),
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 5, right: 2, bottom: 15, top: 40),

                    ),
                  ),
                ),

                SizedBox(height: mediaQueryWidth * 0.85,),
                ElevatedButton(
                  onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Passcheck()));},
                  child: const Text(
                    'RECOVER PASSWORD',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto-Medium'),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: mediaQueryWidth * 0.15,
                        vertical: mediaQueryHeight * 0.015),
                    primary: Colors.purple[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
