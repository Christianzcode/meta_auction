import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController _oldpassword = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var value = Characters.empty;

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
    const _Donetext = ['Chose Well', 'Done !', 'Press Here ', 'Press Here '];
    const _DonetextStyle = TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto-Medium');
    final emailController = TextEditingController();
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
            appBar: AppBar(
              title: const Text(
                'SETTINGS',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontFamily: 'Roboto-Regular'),
              ),
              backgroundColor: Theme.of(context).primaryColor,
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: mediaQueryHeight * 0.06),
                    child: const Text(
                      'CHANGE PASSWORD',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                      padding:  EdgeInsets.symmetric(
                        horizontal: mediaQueryWidth*0.08,
                      ),
                      child: TextFormField(
                        controller: _oldpassword,
                        obscureText: true,
                        validator: validatePass(),
                        decoration: InputDecoration(
                          label: const Text(
                            'OLD PASSWORD',
                            style: TextStyle(fontSize: 16, color: Colors.black38),
                          ),
                        ),
                        // (String? value){
                        //
                        //   if(_password.text == _oldpassword.text){
                        //     return "Same password entered please Re-enter a different password";
                        //   }
                        //   return null;
                        // },
                      ),
                    ),
                  Padding(
                          padding:  EdgeInsets.only(
                            top: mediaQueryHeight * 0.02,
                            left: mediaQueryWidth*0.1,
                            right: mediaQueryWidth*0.1,
                          ),
                          child: TextFormField(
                            controller: _password,
                            obscureText: true,
                            decoration: InputDecoration(
                              label: const Text(
                                'NEW PASSWORD',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16, color: Colors.black38),
                              ),
                            ),
                            validator: MultiValidator([
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
                        Padding(
                          padding:  EdgeInsets.only(
                            top: mediaQueryHeight * 0.02,
                            left: mediaQueryWidth*0.1,
                            right: mediaQueryWidth*0.1,
                            bottom: mediaQueryHeight * 0.2,
                          ),
                          child: TextFormField(
                            controller: _confirmpassword,
                            obscureText: true,
                            decoration: InputDecoration(
                             label: const Text(
                               'CONFIRM PASSWORD',
                               textAlign: TextAlign.center,
                               style: TextStyle(fontSize: 16, color: Colors.black38),
                             ),
                            ),
                            validator: (String? value) {
                              if (value != null) {
                                return 'Please re-enter password';
                              }
                              if (_password.text != _confirmpassword.text) {
                                return "Password Do not match";
                              }
                              return null;
                            },
                    ),
                  ),
                  ElevatedButton(
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto-Medium'),
                    ),
                    onPressed: validatePass,
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
                    // child: AnimatedTextKit(
                    //   animatedTexts: [
                    //     for (final txt in _Donetext)
                    //       TypewriterAnimatedText(txt,
                    //           textStyle: _DonetextStyle,
                    //           textAlign: TextAlign.start),
                    //   ],
                    //
                    //   repeatForever: true,
                    //   // 'Continue',
                    //   // style: TextStyle(
                    //   //     color: Colors.white,
                    //   //     fontSize: 18,
                    //   //     fontWeight: FontWeight.bold,
                    //   //     fontFamily: 'Roboto-Medium'),
                    // ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQueryWidth * 0.2,
                          vertical: mediaQueryHeight * 0.02),
                      primary: Theme.of(context).primaryColor,
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
