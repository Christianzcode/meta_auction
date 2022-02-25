import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta_auction/Screens/Auth/pass_check.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
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
      appBar: AppBar(
        title: const Text(
          'RESET PASSWORD',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontFamily: 'Roboto-Regular'),
        ),
        backgroundColor: Colors.purple[900],
        leading:const  Icon(
          Icons.arrow_back,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:const  EdgeInsets.only(left: 25.0, right: 25.0),
          child: Container(
            height: mediaQueryHeight * 1,
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: mediaQueryWidth * 0.2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                       Text(
                        'Forgot Your Password ?',
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
                  SizedBox(
                    height: mediaQueryWidth * 0.2,
                  ),
                  Container(
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

                        enabledBorder:  const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(width: 0.2, color: Colors.grey)),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.purple[900],
                            size: 15,
                          ),
                          onPressed: () {
                            emailController.clear();
                          },
                        ),

                        hintText: "Email address",
                        hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 17,
                            fontFamily: ' Roboto-Regular'),
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.only(
                            left: 5, right: 2, bottom: 15, top: 40),
                      ),
                      // autofillHints: const [AutofillHints.email],
                      // validator: MultiValidator([
                      //   RequiredValidator(errorText: 'Required *'),
                      //   EmailValidator(errorText: 'Not a valid email'),
                      // ]),
                    ),
                  ),
                  SizedBox(
                    height: mediaQueryWidth * 0.65,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (!formKey.currentState!.validate()==false ){
                        // return;
                      } else {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => Passcheck()));
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
      ),
    ));
  }
}
