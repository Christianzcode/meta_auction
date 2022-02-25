import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta_auction/Screens/Auth/pass_check.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


import 'change_password.dart';

class GeneralSetting extends StatefulWidget {


  @override
  _GeneralSettingState createState() => _GeneralSettingState();
}

class _GeneralSettingState extends State<GeneralSetting> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    bool _checkBoxVal=true;

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
                onTap:(){},
                child: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            body: Container(
                child: Column(children: [
                  SizedBox(height: mediaQueryHeight*0.06,),

                  GestureDetector(onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => ChangePassword()));

                  },
                    child:const Card(elevation: 4,
                    child:  ListTile(
                        title: Text(
                          'CHANGE PASSWORD',
                          style: TextStyle(color: Colors.black45,
                              fontSize: 18,
                              fontFamily: 'Roboto-Medium',
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle:
                         Text(
                            '***********',
                            style: TextStyle(color: Colors.black38,

                              fontSize: 16,
                              fontFamily: 'Roboto-Regular',
                            ),
                          ),
                        )
                    ),
                  ),
                  SizedBox(height: mediaQueryHeight*0.02,),
                  TextButton(onPressed: (){
                    _onButtonPressed();
                  },
                      child: Row(
                    children: [
                      Text('SUBSCRIPTION',textAlign: TextAlign.center,style: TextStyle(color: Colors.black38,
                      fontSize: 17),
                      ),
                    ],
                  )),
                  SizedBox(height: mediaQueryHeight*0.01,),
                  TextButton(onPressed: (){}, child: Row(
                    children: const [
                       Text('SIGN OUT',textAlign: TextAlign.center,style: TextStyle(color: Colors.black38,
                          fontSize: 17),
                      ),
                    ],
                  )),
                ]))));
  }
  void _onButtonPressed(){
    var mediaQueryHeight = MediaQuery
        .of(context)
        .size
        .height;
    var mediaQueryWidth = MediaQuery
        .of(context)
        .size
        .width;
    bool _checkBoxVal=true;
    showModalBottomSheet(context: context,shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12.0),), builder: (context) {


      const _ktextStyle=TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto-Medium');
      const _ktext=['Continue','Continue!','Continue' ,'Continue!'];
      return Container(height: mediaQueryHeight*0.4,
          child:
        Column(

        children: [
          SizedBox(
            height: mediaQueryHeight*0.03,
          ),
          Container(height: mediaQueryHeight*0.06,
            width: mediaQueryWidth*0.8,
            child: Card(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),),
                child:
                Row(children:[
                  SizedBox(
                    width: mediaQueryWidth*0.02,
                  ),


              RoundCheckBox(
                size:25,
                  onTap: (selected) {},
                  checkedColor: Colors.purple[900] ,
                  isChecked: false,),
                  SizedBox(
                    width: mediaQueryWidth*0.035,
                  ),



                  Text("10\$/Month",style: TextStyle(
                    color: Colors.purple[900] ,fontSize: 20,fontWeight: FontWeight.bold)
                  ),])
            ),
          ),
          SizedBox(
            height: mediaQueryHeight*0.01,
          ),
          Container(height: mediaQueryHeight*0.06,
            width: mediaQueryWidth*0.8,
            child: Card(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),),
                child:
            Row(children:[
              SizedBox(
                width: mediaQueryWidth*0.02,
              ),


              RoundCheckBox(
                size:25,
                onTap: (selected) {},
                checkedColor: Colors.purple[900] ,
                isChecked: false,),
              SizedBox(
                width: mediaQueryWidth*0.04,
              ),



              Text("50\$/6 Months",style: TextStyle(
                  color: Colors.purple[900] ,fontSize: 20,fontWeight: FontWeight.bold)
              ),])
            ),
          ),
          SizedBox(
            height: mediaQueryHeight*0.01,
          ),
          Container(height: mediaQueryHeight*0.06,
            width: mediaQueryWidth*0.8,
            child: Card(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),),
                child:
            Row(children:[
              SizedBox(
                width: mediaQueryWidth*0.02,
              ),


              RoundCheckBox(
                size:25,
                onTap: (selected) {},
                checkedColor: Colors.purple[900] ,
                isChecked: false,),
              SizedBox(
                width: mediaQueryWidth*0.035,
              ),



              Text("100\$/1 Year",style: TextStyle(
                  color: Colors.purple[900] ,fontSize: 20,fontWeight: FontWeight.bold)
              ),])
            ),
          ),
          SizedBox(
            height: mediaQueryHeight*0.02,
          ),
          ElevatedButton(
            onPressed: (){},
            child: AnimatedTextKit(animatedTexts: [
              for (final txt in _ktext)
                TypewriterAnimatedText(txt,
                textStyle: _ktextStyle,
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
          SizedBox(
            height: mediaQueryHeight*0.02,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:const [
               Text('By tapping continue, your payment will be Charged to your Google Play account,',style: TextStyle(fontSize: 10),),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:const[
               Text('and your subscription will automatically renew for the same package length'
                ',',style: TextStyle(fontSize: 10),),
            ],),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:const[
               Text('at the same price until you cancel in settings in the Google Play store. ',style: TextStyle(fontSize: 10),),
            ],
          ),
        ],
      ));
    }
    );
  }
}
