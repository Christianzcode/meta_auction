import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta_auction/Screens/Auth/pass_check.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'general_setting.dart';

class ChangePassword extends StatefulWidget {



  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController _oldpassword = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var value=Characters.empty;
    validatePass() {
    if (_formKey.currentState != null) {
      if (_password.text != _oldpassword.text) {
        print("passwords don't match");
        // return false;
      }
      if (_formKey.currentState!.validate()) {
        // ignore: avoid_print

        print('Validated');

      } else {
        // ignore: avoid_print
        print('Not validated');
        // return false;
      }
    }
    // return false;
  }


  @override
  Widget build(BuildContext context) {
    const _Donetext=['Chose Well','Done !','Press Here ' ,'Press Here '];
    const _DonetextStyle=TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto-Medium');
    final emailController = TextEditingController();
    var mediaQueryHeight = MediaQuery
        .of(context)
        .size
        .height;
    var mediaQueryWidth = MediaQuery
        .of(context)
        .size
        .width;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'SETTINGS',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontFamily: 'Roboto-Regular'),
              ),
              backgroundColor: Colors.purple[900],
              leading: GestureDetector(
                onTap:(){ Navigator.of(context).pop(
                    MaterialPageRoute(
                        builder: (context) => GeneralSetting()));},
                child: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(children: [
                  SizedBox(height: mediaQueryHeight*0.06,),
                  const Text('CHANGE PASSWORD',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(height: mediaQueryHeight*0.06,),

                  Container(height: mediaQueryHeight*0.14,
                    child:  Card(elevation: 2,
                        child: ListTile(
                          title:const Text('OLD PASSWORD',textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Colors.black38),),
                          subtitle:  Padding(

                            padding:const  EdgeInsets.only(left: 15,right: 15,),

                            child: TextFormField(

                              controller: _oldpassword,
                              obscureText: true,
                              decoration:InputDecoration (icon:Icon(Icons.lock_outlined,color: Colors.purple[900],size: 15,),),
                              validator:validatePass(),
                              // (String? value){
                              //
                              //   if(_password.text == _oldpassword.text){
                              //     return "Same password entered please Re-enter a different password";
                              //   }
                              //   return null;
                              // },









                            ),
                          ),
                        ),


                        ),
                  ),

                  SizedBox(height: mediaQueryHeight*0.02,),
                  Container(height: mediaQueryHeight*0.14,
                    child: Card(elevation: 2,
                      child: ListTile(
                        title:const Text('NEW PASSWORD',textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Colors.black38),),
                        subtitle:  Padding(

                          padding: const EdgeInsets.only(left: 15,right: 15,),

                          child: TextFormField(
                            controller: _password,
                            obscureText: true,
                            decoration:InputDecoration (icon:Icon(Icons.lock,color: Colors.purple[900],size: 15,),),
                             validator:MultiValidator([
                               RequiredValidator(errorText: 'Required *'),

                             ]),
    //     (String? value){
                            //   if (value != null){
                            //     return"Please enter password";
                            //   }
                            //   return null;
                            // },




                          ),
                        ),
                      ),


                    ),
                  ),
                  SizedBox(height: mediaQueryHeight*0.01,),
                  Container(height: mediaQueryHeight*0.14,
                    child: Card(elevation: 2,
                      child: ListTile(
                        title: const Text('CONFIRM PASSWORD',textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Colors.black38),),
                        subtitle:  Padding(

                          padding:const  EdgeInsets.only(left: 15,right: 15,),

                          child:TextFormField(
                            controller: _confirmpassword,
                            obscureText: true,
                            decoration:InputDecoration (icon:Icon(Icons.lock,color: Colors.purple[900],size: 15,),),
                             validator:
                            (String? value){
                              if (value != null){
                                return'Please re-enter password';
                              }
                             if(_password.text != _confirmpassword.text){
                                return "Password Do not match";
                              }
                              return null;
                            },









                        ),

                        ),
                      ),


                    ),
                  ),
                  SizedBox(height: mediaQueryHeight*0.07,),
                  ElevatedButton(
                    onPressed:validatePass,
                  // (){
                    //   if (_password.text != _oldpassword.text) {
                    //     print("passwords don't match");
                    //
                    //   }
                    //   else {
                    //     Navigator.of(context).pop(
                    //         MaterialPageRoute(
                    //             builder: (context) => ChangePassword()));
                    //   }
                    //
                    // },
                    child: AnimatedTextKit(animatedTexts: [
                      for (final txt in _Donetext)
                        TypewriterAnimatedText(txt,
                            textStyle: _DonetextStyle,
                            textAlign: TextAlign.start),
                    ],

                      repeatForever: true,
                      // 'Continue',
                      // style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 18,
                      //     fontWeight: FontWeight.bold,
                      //     fontFamily: 'Roboto-Medium'),
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

                ]),
              ),
            )));
  }
}