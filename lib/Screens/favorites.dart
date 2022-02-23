import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
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
          title: Center(
            child: Text(
              'FAVORITES',
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: 'Roboto'),
            ),
          ),
        ),
        body:
            // Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // children: [
            // Padding(
            // padding:  EdgeInsets.only(left: mediaQueryWidth*0.05,right: mediaQueryWidth*0.05),
            // child: Text(
            // 'Seems like you don’t have any items in your favorites list.',
            // style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),textAlign: TextAlign.center,
            // ),
            // )
            // ],
            ListView(
          children: [
            SizedBox(height: mediaQueryHeight*0.05,),
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
                    Text('Lorem ipsum')
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
                    Text('Lorem ipsum')
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
                    Text('Lorem ipsum')
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
                    Text('Lorem ipsum')
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
                    Text('Lorem ipsum')
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
                    Text('Lorem ipsum')
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
                    Text('Lorem ipsum')
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
                    Text('Lorem ipsum')
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
