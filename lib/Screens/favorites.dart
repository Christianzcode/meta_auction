import 'package:flutter/material.dart';

import '../Helpers/watch_fake.dart';
import '../Models/watch.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    List<Watch> fav =
    List.from(wat.where((element) => element.favorite == true));
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            'FAVORITES',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Roboto-Medium'),
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.only(top: mediaQueryHeight*0.04),
          child: GridView.builder(
                itemCount: fav.length,
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
                      child: Image.asset(fav[i].image),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: mediaQueryHeight * 0.005),
                      child: Text(
                        fav[i].name,
                        style: TextStyle(
                            fontSize: 14, fontFamily: 'Roboto-Regular'),
                      ),
                    )
                  ]);
                }),
        ),

            // Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // children: [
            // Padding(
            // padding:  EdgeInsets.only(left: mediaQueryWidth*0.05,right: mediaQueryWidth*0.05),
            // child: Text(
            // 'Seems like you don’t have any items in your favorites list.',
            // style: TextStyle(fontSize: 20, fontFamily: 'Roboto-Regular'),textAlign: TextAlign.center,
            // ),
            // )
            // ],
        //     ListView(
        //   children: [
        //     Padding(
        //       padding: EdgeInsets.only(
        //         top: mediaQueryHeight * 0.05,
        //       ),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Column(
        //             children: [
        //               SizedBox(
        //                 width: mediaQueryWidth * 0.4,
        //                 height: mediaQueryHeight * 0.16,
        //                 child:
        //                 Image.asset('assets/images/watch.png'),
        //               ),
        //               Padding(
        //                 padding: EdgeInsets.only(top: mediaQueryHeight * 0.005),
        //                 child: const Text(
        //                   'Lorem ipsum',
        //                   style: TextStyle(
        //                       fontSize: 14, fontFamily: 'Roboto-Regular'),
        //                 ),
        //               )
        //             ],
        //           ),
        //           SizedBox(
        //             width: mediaQueryWidth * 0.01,
        //           ),
        //           Column(
        //             children: [
        //               SizedBox(
        //                 width: mediaQueryWidth * 0.4,
        //                 height: mediaQueryHeight * 0.16,
        //                 child:
        //                 Image.asset('assets/images/watch.png'),
        //               ),
        //               Padding(
        //                 padding: EdgeInsets.only(top:mediaQueryHeight * 0.005),
        //                 child: const Text(
        //                   'Lorem ipsum',
        //                   style: TextStyle(
        //                       fontSize: 14, fontFamily: 'Roboto-Regular'),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.only(top:mediaQueryHeight * 0.05,),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Column(
        //             children: [
        //               SizedBox(
        //                 width: mediaQueryWidth * 0.4,
        //                 height: mediaQueryHeight * 0.16,
        //                 child:
        //                 Image.asset('assets/images/watch.png'),
        //               ),
        //               Padding(
        //                 padding:  EdgeInsets.only(top:mediaQueryHeight * 0.005,),
        //                 child: const Text(
        //                   'Lorem ipsum',
        //                   style:
        //                       TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           SizedBox(
        //             width: mediaQueryWidth * 0.01,
        //           ),
        //           Column(
        //             children: [
        //               SizedBox(
        //                 width: mediaQueryWidth * 0.4,
        //                 height: mediaQueryHeight * 0.16,
        //                 child:
        //                 Image.asset('assets/images/watch.png'),
        //               ),
        //               Padding(
        //                 padding:  EdgeInsets.only(top:mediaQueryHeight * 0.005,),
        //                 child: const Text(
        //                   'Lorem ipsum',
        //                   style:
        //                       TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.only(top:mediaQueryHeight * 0.05,),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Column(
        //             children: [
        //               SizedBox(
        //                 width: mediaQueryWidth * 0.4,
        //                 height: mediaQueryHeight * 0.16,
        //                 child:
        //                 Image.asset('assets/images/watch.png'),
        //               ),
        //               Padding(
        //                 padding: EdgeInsets.only(top:mediaQueryHeight * 0.005,),
        //                 child: const Text(
        //                   'Lorem ipsum',
        //                   style:
        //                       TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           SizedBox(
        //             width: mediaQueryWidth * 0.01,
        //           ),
        //           Column(
        //             children: [
        //               SizedBox(
        //                 width: mediaQueryWidth * 0.4,
        //                 height: mediaQueryHeight * 0.16,
        //                 child:
        //                 Image.asset('assets/images/watch.png'),
        //               ),
        //               Padding(
        //                 padding: EdgeInsets.only(top:mediaQueryHeight * 0.005,),
        //                 child: const Text(
        //                   'Lorem ipsum',
        //                   style:
        //                       TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //     Padding(
        //       padding:  EdgeInsets.only(top:mediaQueryHeight * 0.05,),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Column(
        //             children: [
        //               SizedBox(
        //                 width: mediaQueryWidth * 0.4,
        //                 height: mediaQueryHeight * 0.16,
        //                 child:
        //                 Image.asset('assets/images/watch.png'),
        //               ),
        //               Padding(
        //                 padding: EdgeInsets.only(top:mediaQueryHeight * 0.005,),
        //                 child: const Text(
        //                   'Lorem ipsum',
        //                   style:
        //                       TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
        //                 ),
        //               ),
        //             ],
        //           ),
        //           SizedBox(
        //             width: mediaQueryWidth * 0.01,
        //           ),
        //           Column(
        //             children: [
        //               SizedBox(
        //                 width: mediaQueryWidth * 0.4,
        //                 height: mediaQueryHeight * 0.16,
        //                 child:
        //                     Image.asset('assets/images/watch.png'),
        //               ),
        //               Padding(
        //                 padding: EdgeInsets.only(top:mediaQueryHeight * 0.005, bottom: mediaQueryHeight * 0.1,),
        //                 child: const Text(
        //                   'Lorem ipsum',
        //                   style:
        //                       TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
