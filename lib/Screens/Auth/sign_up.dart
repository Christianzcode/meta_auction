import'package:flutter/material.dart';



class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(toolbarHeight: mediaQueryHeight * 0.10,  title: Center( child: Text("REGISTER ", style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center),),backgroundColor:Color.fromRGBO(91, 63, 112, 1),),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

Container(child: Text('Create Your Account', style: TextStyle(fontSize: 30, ),),),
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
                                  'Username ',
                                  style: TextStyle(fontFamily: 'Roboto-Regular'),
                                ),
                              ),
                            ]
                        ),

                      ),

                    ),
                  ),
                ),
                SizedBox(
                  height: mediaQueryHeight * 0.03,
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
                                  'Email ',
                                  style: TextStyle(fontFamily: 'Roboto-Regular'),
                                ),
                              ),
                            ]
                        ),

                      ),

                    ),
                  ),
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
                                  'Password ',
                                  style: TextStyle(fontFamily: 'Roboto-Regular'),
                                ),
                              ),
                            ]
                        ),

                      ),

                    ),
                  ),
                ),


                Padding(
                  padding:  EdgeInsets.only(
                      bottom: mediaQueryHeight * 0.02,
                      right:mediaQueryHeight * 0.05 ,
                      left: mediaQueryWidth * 0.05),

                  child: TextFormField(


                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      label: Text.rich(
                        TextSpan(
                            children: <InlineSpan>[
                              WidgetSpan(
                                child: Text(
                                  'Phone',
                                  style: TextStyle(fontFamily: 'Roboto-Regular'),
                                ),
                              ),
                            ]
                        ),

                      ),


                    ),
                  ),
                ),



                SizedBox(
                  height: mediaQueryHeight * 0.02,
                ),
                ElevatedButton(
                  onPressed: () {
                    ;
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
                    primary: const Color.fromRGBO(91, 63, 112, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
