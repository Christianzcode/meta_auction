import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta_auction/Models/watch.dart';

class SeeAll extends StatefulWidget {
  List<Watch> watch;

  SeeAll({ this.watch});

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
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor:Theme.of(context).primaryColor,
          title:const  Text('Top Selling',
              style: TextStyle(fontSize: 20, fontFamily: 'Roboto-Regular',)
          ),
        ),
        body: GridView.builder(
          itemCount: widget.watch.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (context, i) {
              return Column(children: [
                SizedBox(
                  width: mediaQueryWidth * 0.4,
                  height: mediaQueryHeight * 0.16,
                  child: Image.asset(widget.watch[i].image),
                ),
                Padding(
                  padding: EdgeInsets.only(top: mediaQueryHeight * 0.005),
                  child: Text(
                    widget.watch[i].name,
                    style: TextStyle(
                        fontSize: 14, fontFamily: 'Roboto-Regular'),
                  ),
                )
              ]);
            }),
      ),
    );
  }
}
