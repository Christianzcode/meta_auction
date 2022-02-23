import 'package:flutter/material.dart';
import 'package:meta_auction/model/brand_details.dart';
import 'package:meta_auction/model/brand_details.dart';
import 'package:meta_auction/model/brand_details.dart';

import 'analytics.dart';
import 'details.dart';

class TabDetails extends StatefulWidget {




  @override
  TabDetailsState createState() => TabDetailsState();
}

class TabDetailsState extends State<TabDetails> {
  var firstField = TextEditingController();
  var thirdField = TextEditingController();
  var secondField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('DETAILS', textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, fontFamily: 'Roboto-Regular',)
        ),),

        body: ColoredBox(
          color: Colors.white,
          child: DefaultTabController(
            length: 2,
            child: Column(children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black12))),
                height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    MediaQuery.of(context).padding.bottom) *
                    0.08,
                child: const TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.blue,
                  indicatorWeight: 4,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelStyle:
                  TextStyle(fontSize: 16, fontFamily: 'Roboto-Medium'),
                  tabs: [
                    Tab(
                      text: 'Details',
                    ),
                    Tab(
                      text: 'Analytics',
                    ),

                  ],
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top -
                      MediaQuery.of(context).padding.bottom) *
                      0.9,
                  width: double.maxFinite,
                  child: TabBarView(
                    // controller: forTab,
                    children: [
                      Details(

                      ),
                      Analytics(

                      ),

                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}