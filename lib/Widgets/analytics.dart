import 'package:flutter/material.dart';

class Analytics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: mediaQueryWidth * 0.01),
      child: Container(color: Colors.grey[200],
        height: mediaQueryHeight*0.5,

      ),
    );
  }
}
