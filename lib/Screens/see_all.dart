import 'package:flutter/material.dart';

class SeeAll extends StatefulWidget {
  const SeeAll({Key? key}) : super(key: key);

  @override
  _SeeAllState createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(91, 63, 112, 1),
        ),
        body:
        ListView(
          children: [
            SizedBox(height: mediaQueryHeight*0.05,),
            Row(children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_ios_outlined,color: Color.fromRGBO(91, 63, 112, 1),),),
            SizedBox(width:mediaQueryWidth*0.001,),
              Text('Top selling',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500,fontFamily: 'Roboto-Medium'),)
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: mediaQueryWidth * 0.4,
                      height: mediaQueryHeight * 0.16,
                      child: Image.asset('assets/images/NoPath - Copy (15).png'),
                    ),
                    SizedBox(height: mediaQueryHeight*0.005,),
                    Text('Lorem ipsum',style: TextStyle(fontSize: 14,fontFamily: 'Roboto-Regular'),)
                  ],
                ),
                SizedBox(width: mediaQueryWidth*0.01,),
                Column(
                  children: [
                    Container(
                      width: mediaQueryWidth * 0.4,
                      height: mediaQueryHeight * 0.16,
                      child: Image.asset('assets/images/NoPath - Copy (16).png'),
                    ),
                    SizedBox(height: mediaQueryHeight*0.005,),
                    Text('Lorem ipsum',style: TextStyle(fontSize: 14,fontFamily: 'Roboto-Regular'),),
                  ],
                ),
              ],
            ),
            SizedBox(height: mediaQueryHeight*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: mediaQueryWidth * 0.4,
                      height: mediaQueryHeight * 0.16,
                      child: Image.asset('assets/images/NoPath - Copy (26).png'),
                    ),
                    SizedBox(height: mediaQueryHeight*0.005,),
                    Text('Lorem ipsum',style: TextStyle(fontSize: 14,fontFamily: 'Roboto-Regular'),),
                  ],
                ),
                SizedBox(width: mediaQueryWidth*0.01,),
                Column(
                  children: [
                    Container(
                      width: mediaQueryWidth * 0.4,
                      height: mediaQueryHeight * 0.16,
                      child: Image.asset('assets/images/NoPath - Copy (27).png'),
                    ),
                    SizedBox(height: mediaQueryHeight*0.005,),
                    Text('Lorem ipsum',style: TextStyle(fontSize: 14,fontFamily: 'Roboto-Regular'),),
                  ],
                ),
              ],
            ),
            SizedBox(height: mediaQueryHeight*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: mediaQueryWidth * 0.4,
                      height: mediaQueryHeight * 0.16,
                      child: Image.asset('assets/images/NoPath - Copy (28).png'),
                    ),
                    SizedBox(height: mediaQueryHeight*0.005,),
                    Text('Lorem ipsum',style: TextStyle(fontSize: 14,fontFamily: 'Roboto-Regular'),),
                  ],
                ),
                SizedBox(width: mediaQueryWidth*0.01,),
                Column(
                  children: [
                    Container(
                      width: mediaQueryWidth * 0.4,
                      height: mediaQueryHeight * 0.16,
                      child: Image.asset('assets/images/NoPath - Copy (29).png'),
                    ),
                    SizedBox(height: mediaQueryHeight*0.005,),
                    Text('Lorem ipsum',style: TextStyle(fontSize: 14,fontFamily: 'Roboto-Regular'),),
                  ],
                ),
              ],
            ),
            SizedBox(height: mediaQueryHeight*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: mediaQueryWidth * 0.4,
                      height: mediaQueryHeight * 0.16,
                      child: Image.asset('assets/images/NoPath - Copy (30).png'),
                    ),
                    SizedBox(height: mediaQueryHeight*0.005,),
                    Text('Lorem ipsum',style: TextStyle(fontSize: 14,fontFamily: 'Roboto-Regular'),),
                  ],
                ),
                SizedBox(width: mediaQueryWidth*0.01,),
                Column(
                  children: [
                    Container(
                      width: mediaQueryWidth * 0.4,
                      height: mediaQueryHeight * 0.16,
                      child: Image.asset('assets/images/NoPath - Copy (31).png'),
                    ),
                    SizedBox(height: mediaQueryHeight*0.005,),
                    Text('Lorem ipsum',style: TextStyle(fontSize: 14,fontFamily: 'Roboto-Regular'),),
                  ],
                ),
              ],
            ),
            SizedBox(height: mediaQueryHeight*0.1,),
          ],
        ),
      ),
    );
  }
}
