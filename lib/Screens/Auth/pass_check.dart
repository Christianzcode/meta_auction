import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Passcheck extends StatefulWidget {
  @override
  _PasscheckState createState() => _PasscheckState();
}

class _PasscheckState extends State<Passcheck> {
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
          child:  GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Container(
              height: mediaQueryHeight * 1,
              child: Column(
                children: [
                  SizedBox(
                    height: mediaQueryWidth * 0.9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:const [
                      Text(
                        'Check Your Email',
                        style: TextStyle(
                          fontSize: 30,
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
                        'We\'ve sent you instructions on how to reset the',
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
                        ' password (also check the Spam folder) ',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto-Regular',
                            color: Colors.grey[600]),
                      )
                    ],
                  ),
                  SizedBox(height: mediaQueryWidth * 0.5,),

                  ElevatedButton(
                    onPressed: (){},
                    child: const Text(
                      'CLOSE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto-Medium'),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQueryWidth * 0.30,
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
      ),
    );
  }
}
