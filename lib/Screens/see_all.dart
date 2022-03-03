import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta_auction/Models/watch.dart';

class SeeAll extends StatefulWidget {
  List<Watch> watch;

  SeeAll({required this.watch});

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
          toolbarHeight: mediaQueryHeight * 0.08,
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, 'Settings');
            },
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.filter_alt_outlined)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'Favorites');
                },
                icon: const Icon(Icons.favorite_border))
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: mediaQueryHeight * 0.03),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const Text(
                    'Top selling',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto-Medium'),
                  )
                ],
              ),
            ),
            Container(
              height: mediaQueryHeight * 0.759,
              child: GridView.builder(
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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Column(
            //       children: [
            //         SizedBox(
            //           width: mediaQueryWidth * 0.4,
            //           height: mediaQueryHeight * 0.16,
            //           child:
            //           Image.asset('assets/images/watch.png'),
            //         ),
            //         Padding(
            //           padding:  EdgeInsets.only(top:mediaQueryHeight * 0.005),
            //           child: const Text(
            //             'Lorem ipsum',
            //             style:
            //                 TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
            //           ),
            //         )
            //       ],
            //     ),
            //     Padding(
            //       padding:  EdgeInsets.only(top:mediaQueryWidth * 0.01),
            //       child: Column(
            //         children: [
            //           SizedBox(
            //             width: mediaQueryWidth * 0.4,
            //             height: mediaQueryHeight * 0.16,
            //             child:
            //             Image.asset('assets/images/watch.png'),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.only(top:mediaQueryHeight * 0.005),
            //             child: const Text(
            //               'Lorem ipsum',
            //               style:
            //                   TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            // Padding(
            //   padding: EdgeInsets.only(top:mediaQueryHeight * 0.05),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Column(
            //         children: [
            //           SizedBox(
            //             width: mediaQueryWidth * 0.4,
            //             height: mediaQueryHeight * 0.16,
            //             child:
            //             Image.asset('assets/images/watch.png'),
            //           ),
            //           Padding(
            //             padding:  EdgeInsets.only(top:mediaQueryHeight * 0.005),
            //             child: const Text(
            //               'Lorem ipsum',
            //               style:
            //                   TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         width: mediaQueryWidth * 0.01,
            //       ),
            //       Column(
            //         children: [
            //           SizedBox(
            //             width: mediaQueryWidth * 0.4,
            //             height: mediaQueryHeight * 0.16,
            //             child:
            //             Image.asset('assets/images/watch.png'),
            //           ),
            //           Padding(
            //             padding:  EdgeInsets.only(top:mediaQueryHeight * 0.005,),
            //             child: const Text(
            //               'Lorem ipsum',
            //               style:
            //                   TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding:  EdgeInsets.only(top:mediaQueryHeight * 0.05),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Column(
            //         children: [
            //           SizedBox(
            //             width: mediaQueryWidth * 0.4,
            //             height: mediaQueryHeight * 0.16,
            //             child:
            //             Image.asset('assets/images/watch.png'),
            //           ),
            //           Padding(
            //             padding:  EdgeInsets.only(top:mediaQueryHeight * 0.005),
            //             child: const Text(
            //               'Lorem ipsum',
            //               style:
            //                   TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         width: mediaQueryWidth * 0.01,
            //       ),
            //       Column(
            //         children: [
            //           SizedBox(
            //             width: mediaQueryWidth * 0.4,
            //             height: mediaQueryHeight * 0.16,
            //             child:
            //             Image.asset('assets/images/watch.png'),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.only(top:mediaQueryHeight * 0.005),
            //             child: const Text(
            //               'Lorem ipsum',
            //               style:
            //                   TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(top:mediaQueryHeight * 0.05),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Column(
            //         children: [
            //           SizedBox(
            //             width: mediaQueryWidth * 0.4,
            //             height: mediaQueryHeight * 0.16,
            //             child:
            //             Image.asset('assets/images/watch.png'),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.only(top:mediaQueryHeight * 0.005),
            //             child: const Text(
            //               'Lorem ipsum',
            //               style:
            //                   TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
            //             ),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         width: mediaQueryWidth * 0.01,
            //       ),
            //       Column(
            //         children: [
            //           SizedBox(
            //             width: mediaQueryWidth * 0.4,
            //             height: mediaQueryHeight * 0.16,
            //             child:
            //             Image.asset('assets/images/watch.png'),
            //           ),
            //           Padding(
            //             padding:  EdgeInsets.only(top:mediaQueryHeight * 0.005, bottom: mediaQueryHeight * 0.1),
            //             child: const Text(
            //               'Lorem ipsum',
            //               style:
            //                   TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
