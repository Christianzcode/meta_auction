import 'package:flutter/material.dart';
import 'package:meta_auction/Screens/Auth/sign_up.dart';
import 'package:meta_auction/Screens/Home.dart';


class LogIn extends StatefulWidget {


  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final email = TextEditingController();
  final password = TextEditingController();

  bool _isObscure = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(toolbarHeight: mediaQueryHeight * 0.10,  title: Center( child: Text("LOG IN  ", style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center),),backgroundColor:Color.fromRGBO(91, 63, 112, 1),),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: mediaQueryHeight * 0.01,
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.38,
                  width: mediaQueryWidth,
                  child: Stack(children: [
                    SizedBox(
                      height: mediaQueryHeight * 0.8,
                        width: mediaQueryWidth,
                        child: Image.asset(
                            'assets/images/logo.png',
                            )),


                  ]),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.005,
                ),

                Padding(
                    padding: EdgeInsets.only(
                        bottom: mediaQueryHeight * 0.02,
                        right:mediaQueryHeight * 0.05 ,
                        left: mediaQueryWidth * 0.05),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                        label: Text.rich(
                          TextSpan(
                            children: <InlineSpan>[
                          WidgetSpan(
                          child: Text(
                            'Username or email',
                            style: TextStyle(fontFamily: 'Roboto-Regular'),
                          ),
                        ),
                      ]
                    ),

                  ),
                        prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.03,
                ),


                Padding(
                  padding:  EdgeInsets.only(
                    bottom: mediaQueryHeight * 0.02,
                    right:mediaQueryHeight * 0.05 ,
                    left: mediaQueryWidth * 0.05),

                  child: TextFormField(


                    obscureText: _isObscure,
                    controller: password,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                        label: Text.rich(
                          TextSpan(
                              children: <InlineSpan>[
                                WidgetSpan(
                                  child: Text(
                                    'Password',
                                    style: TextStyle(fontFamily: 'Roboto-Regular'),
                                  ),
                                ),
                              ]
                          ),

                        ),
                      prefixIcon: Icon(Icons.lock_outline),
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
                  padding:
                  EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.07),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot password?",
                            style: TextStyle(

                                fontSize: 15,
                                fontFamily: 'Roboto-Regular',
                              color: Colors.grey
                                ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.02,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomePage()));
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
                    primary: const Color.fromRGBO(91, 63, 112, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(child: Text('Don t have an account ?', style: TextStyle(color: Colors.black45),),),
                    Container(child:   TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => Signup()));

                        },
                        child: const Text(
                          "REGISTER",
                          style: TextStyle(

                            fontSize: 15,
                            fontFamily: 'Roboto-Regular',
                            color: const Color.fromRGBO(91, 63, 112, 1),
                          ),
                        )),),
                  ],
                ),


              ],
            ),
          )),
    );
  }
}
