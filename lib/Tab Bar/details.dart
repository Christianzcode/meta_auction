import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta_auction/Fake%20Data/brand_details.dart';
import 'package:meta_auction/model/watch.dart';


class Details extends StatelessWidget {
  final Watch watch;

  Details({required this.watch});

  @override
  Widget build(BuildContext context) {
    List<Watch> w = wat;
    int index = 0;
    var mediaQueryHeight = MediaQuery
        .of(context)
        .size
        .height;
    var mediaQueryWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Container(color: Colors.blue,
      child:
        Container(color: Colors.white,
          child: Column(

              children: [


                Row(

                  children: [
                    Text(
                      w[index].brand,
                    ),
                    Expanded(child:Container()),
                    Text("Brand")

                  ],),

                const Divider(
                  thickness: 2,
                ),

                Row(
                  children: [
                    Text(
                      w[index].brand,
                    ),
                    Expanded(child:Container()),
                    Text("Brand")

                  ],),

                const Divider(
                  thickness: 2,
                ),

                Row(
                  children: [
                    Text(
                      w[index].brand,
                    ),
                    Expanded(child:Container()),
                    Text("Brand")

                  ],),

                const Divider(
                  thickness: 2,
                ),

                Row(
                  children: [
                    Text(
                      w[index].brand,
                    ),
                    Expanded(child:Container()),
                    Text("Brand")

                  ],),

                const Divider(
                  thickness: 2,
                ),

                Row(
                  children: [
                    Text(
                      w[index].brand,
                    ),
                    Expanded(child:Container()),
                    Text("Brand")

                  ],),

                const Divider(
                  thickness: 2,
                ),

                Row(
                  children: [
                    Text(
                      w[index].brand,
                    ),
                    Expanded(child:Container()),
                    Text("Brand")

                  ],),

                const Divider(
                  thickness: 2,
                ),

                Row(
                  children: [
                    Text(
                      w[index].brand,
                    ),
                    Expanded(child:Container()),
                    Text("Brand")

                  ],),

                const Divider(
                  thickness: 2,
                ),

                Row(
                  children: [
                    Text(
                      w[index].brand,
                    ),
                    Expanded(child:Container()),
                    Text("Brand")

                  ],),

                const Divider(
                  thickness: 2,
                ),



              ]),
        ),
      );






  }
}
















