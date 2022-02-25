import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta_auction/Models/watch.dart';
import '../Helpers/watch_fake.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Watch> list = wat;
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
          toolbarHeight: mediaQueryHeight * 0.08,
          backgroundColor: const Color.fromRGBO(91, 63, 112, 1),
          leading: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, 'Settings');
            },
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {
              Navigator.pushNamed(context, 'Favorites');
            }, icon: const Icon(CupertinoIcons.heart))
          ],
        ),
        // body: Column(
        //   children: [
        //     SizedBox(
        //       height: mediaQueryHeight * 0.02,
        //     ),
        //     Container(
        //         margin: EdgeInsets.fromLTRB(
        //             0, mediaQueryHeight * 0.01, 0, mediaQueryHeight * 0.01),
        //         color: Colors.black12,
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Container(
        //               padding: EdgeInsets.only(left: mediaQueryHeight * 0.03),
        //               child: const Text(
        //                 'TOP SELLING ',
        //                 style: TextStyle(
        //                   fontSize: 20,
        //                   fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //             ),
        //             Container(
        //               padding: EdgeInsets.only(right: mediaQueryHeight * 0.03),
        //               child: TextButton(
        //                   onPressed: () {},
        //                   child: const Text(
        //                     "See all >>",
        //                     style: TextStyle(
        //                         fontFamily: 'Roboto-Regular',
        //                         color: Colors.black54),
        //                   )),
        //             )
        //           ],
        //         )),
        //     Container(child: ListView.builder(
        //         itemBuilder: (context, index) {
        //           return Column(
        //             children: [
        //               Container(
        //                   height: mediaQueryHeight * 0.02,
        //                   width: mediaQueryWidth * 0.02,
        //                   child: Image.asset(list[index].image)
        //               )
        //             ],);
        //         }
        //     )
        //
        //
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         ;
        //       },
        //       child: const Text(
        //         ' Subscribe To See The Newest Auction ',
        //         style: TextStyle(
        //             color: Colors.white,
        //             fontSize: 12,
        //             fontWeight: FontWeight.bold,
        //             fontFamily: 'Roboto-Bold'),
        //       ),
        //       style: ElevatedButton.styleFrom(
        //         elevation: 0.1,
        //         primary: const Color.fromRGBO(91, 63, 112, 1),
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(15.0),
        //         ),
        //       ),
        //     ),
        //     Row(
        //       children: [
        //         SizedBox(
        //           width: mediaQueryWidth * 0.06,
        //         ),
        //         const Text(
        //           'Filter By ',
        //           style: TextStyle(fontSize: 18),
        //         ),
        //         IconButton(
        //           onPressed: () {},
        //           icon: const Icon(CupertinoIcons.sort_down),
        //         ),
        //         ElevatedButton(
        //           onPressed: () {
        //           Navigator.pushNamed(context,'SeeAll')
        //           },
        //           child: const Text(
        //             'All Watches',
        //             style: TextStyle(
        //               color: Color.fromRGBO(91, 63, 112, 1),
        //             ),
        //           ),
        //           style: ElevatedButton.styleFrom(
        //             elevation: 1,
        //             primary: Colors.white,
        //             shape: RoundedRectangleBorder(
        //               side: const BorderSide(
        //                 color: Color.fromRGBO(91, 63, 112, 1),
        //               ),
        //               borderRadius: BorderRadius.circular(20.0),
        //             ),
        //           ),
        //         ),
        //         SizedBox(
        //           width: mediaQueryWidth * 0.02,
        //         ),
        //         ElevatedButton(
        //           onPressed: () {},
        //           child: const Text(
        //             'Top Selling',
        //             style: TextStyle(
        //               color: Color.fromRGBO(91, 63, 112, 1),
        //             ),
        //           ),
        //           style: ElevatedButton.styleFrom(
        //             elevation: 1,
        //             primary: Colors.white,
        //             shape: RoundedRectangleBorder(
        //               side: const BorderSide(
        //                 color: Color.fromRGBO(91, 63, 112, 1),
        //               ),
        //               borderRadius: BorderRadius.circular(20.0),
        //             ),
        //           ),
        //         )
        //       ],
        //     ),
        //
        //     Container(
        //       child: ListView.builder(itemBuilder: (context, i) {
        //         List<Watch> W = wat;
        //
        //         return Column(
        //           children: [
        //             Container(
        //               height: mediaQueryHeight * 0.5,
        //               width: mediaQueryWidth * 0.9,
        //                child: Image.asset(list[i].image),
        //             )
        //           ],
        //         );
        //       },),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
