import 'package:flutter/material.dart';
import 'package:meta_auction/Models/watch.dart';
import 'package:meta_auction/Widgets/analytics.dart';
import 'package:meta_auction/Widgets/details.dart';




class GeneralDetails extends StatefulWidget {
  final Watch watch;
  GeneralDetails({required this.watch});




  @override
  GeneralDetailsState createState() => GeneralDetailsState();
}

class GeneralDetailsState extends State<GeneralDetails> {
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor:Theme.of(context).primaryColor,
          title:Container(
            alignment: Alignment.center,
            child: const  Text('DETAILS',
        style: TextStyle(fontSize: 20, fontFamily: 'Roboto-Regular',)
        ),
          ),),

        body: ColoredBox(
          color: Colors.white,
          child: DefaultTabController(
            length: 2,
            child: Column(children: [
              Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.03),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black12))),
                  height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top -
                      MediaQuery.of(context).padding.bottom) *
                      0.04,

                  child:  TabBar(
                    isScrollable: false,
                    indicatorColor:Theme.of(context).primaryColor,
                    indicatorWeight: 3,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    labelStyle:
                    const TextStyle(fontSize: 21, fontFamily: 'Roboto-Regular'),
                    tabs: const [
                     Tab(
                        text: 'Details',
                      ),
                     Tab(
                        text: 'Analytics',
                      ),

                    ],
                  ),
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
                        watch: widget.watch,
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