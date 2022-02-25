import 'package:flutter/material.dart';
import 'package:meta_auction/Screens/Auth/reset_password_check.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  validate() {
    if (formKey.currentState != null) {
      if (formKey.currentState!.validate()) {
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

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              'RESET PASSWORD',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontFamily: 'Roboto-Regular'),
            ),
            backgroundColor: Theme.of(context).primaryColor,
            leading:  IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding:const  EdgeInsets.only(left: 25.0, right: 25.0),
              child: SizedBox(
                height: mediaQueryHeight * 1,
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top:mediaQueryWidth * 0.2, bottom: mediaQueryWidth * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
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
                      Padding(
                        padding:  EdgeInsets.only(top:mediaQueryWidth * 0.2,),
                        child: SizedBox(
                          height:  mediaQueryHeight*0.075,
                          child: TextFormField(

                            controller: emailController,

                            // onChanged: (value) {
                            //   setState(() {
                            //
                            //   });

                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              label: Text( "Email address", style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: ' Roboto-Regular'),),
                                // border: InputBorder.none,
                                // errorBorder: InputBorder.none,
                                // focusedBorder: InputBorder.none,
                                // contentPadding: const EdgeInsets.only(
                                //     left: 5, right: 2, bottom: 15, top: 40),)
                              //enabledBorder:  const OutlineInputBorder(
                                  //borderRadius: BorderRadius.all(Radius.circular(10)),
                                  // borderSide:
                                  // BorderSide(width: 0.2, color: Colors.grey)
                              //),
                              // suffixIcon: IconButton(
                              //   icon: Icon(
                              //     Icons.close,
                              //     color: Theme.of(context).primaryColor,
                              //     size: 15,
                              //   ),
                              //   onPressed: () {
                              //     emailController.clear();
                              //   },
                              //),

                              // hintText: "Email address",
                              // hintStyle: TextStyle(
                              //     color: Colors.grey[500],
                              //     fontSize: 17,
                              //     fontFamily: ' Roboto-Regular'),
                              // border: InputBorder.none,
                              // errorBorder: InputBorder.none,
                              // focusedBorder: InputBorder.none,
                              // contentPadding: const EdgeInsets.only(
                              //     left: 5, right: 2, bottom: 15, top: 40),
                            ),
                            // autofillHints: const [AutofillHints.email],
                            validator: MultiValidator([
                              RequiredValidator(errorText: 'Required *'),
                              EmailValidator(errorText: 'Not a valid email'),
                            ]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:mediaQueryWidth * 0.6),
                        child: ElevatedButton(
                          onPressed: () {
                            if (!formKey.currentState!.validate()==false ){
                              // return;
                            } else {
                              Navigator.pushNamed(context, 'ResetPasswordCheck');

                            }
                          },
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
                                horizontal: mediaQueryWidth * 0.1,
                                vertical: mediaQueryHeight * 0.015),
                            primary: Theme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
