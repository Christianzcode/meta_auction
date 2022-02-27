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
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView(
          children: [
            Padding(
              padding:  EdgeInsets.only(top:mediaQueryHeight * 0.05),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon:  Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:mediaQueryWidth * 0.001),
                    child: const Text(
                      'Top selling',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto-Medium'),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: mediaQueryWidth * 0.4,
                      height: mediaQueryHeight * 0.16,
                      child:
                      Image.asset('assets/images/watch.png'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top:mediaQueryHeight * 0.005),
                      child: const Text(
                        'Lorem ipsum',
                        style:
                            TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(top:mediaQueryWidth * 0.01),
                  child: Column(
                    children: [
                      SizedBox(
                        width: mediaQueryWidth * 0.4,
                        height: mediaQueryHeight * 0.16,
                        child:
                        Image.asset('assets/images/watch.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:mediaQueryHeight * 0.005),
                        child: const Text(
                          'Lorem ipsum',
                          style:
                              TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top:mediaQueryHeight * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: mediaQueryWidth * 0.4,
                        height: mediaQueryHeight * 0.16,
                        child:
                        Image.asset('assets/images/watch.png'),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top:mediaQueryHeight * 0.005),
                        child: const Text(
                          'Lorem ipsum',
                          style:
                              TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: mediaQueryWidth * 0.01,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: mediaQueryWidth * 0.4,
                        height: mediaQueryHeight * 0.16,
                        child:
                        Image.asset('assets/images/watch.png'),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top:mediaQueryHeight * 0.005,),
                        child: const Text(
                          'Lorem ipsum',
                          style:
                              TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top:mediaQueryHeight * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: mediaQueryWidth * 0.4,
                        height: mediaQueryHeight * 0.16,
                        child:
                        Image.asset('assets/images/watch.png'),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top:mediaQueryHeight * 0.005),
                        child: const Text(
                          'Lorem ipsum',
                          style:
                              TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: mediaQueryWidth * 0.01,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: mediaQueryWidth * 0.4,
                        height: mediaQueryHeight * 0.16,
                        child:
                        Image.asset('assets/images/watch.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:mediaQueryHeight * 0.005),
                        child: const Text(
                          'Lorem ipsum',
                          style:
                              TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:mediaQueryHeight * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: mediaQueryWidth * 0.4,
                        height: mediaQueryHeight * 0.16,
                        child:
                        Image.asset('assets/images/watch.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:mediaQueryHeight * 0.005),
                        child: const Text(
                          'Lorem ipsum',
                          style:
                              TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: mediaQueryWidth * 0.01,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: mediaQueryWidth * 0.4,
                        height: mediaQueryHeight * 0.16,
                        child:
                        Image.asset('assets/images/watch.png'),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top:mediaQueryHeight * 0.005, bottom: mediaQueryHeight * 0.1),
                        child: const Text(
                          'Lorem ipsum',
                          style:
                              TextStyle(fontSize: 14, fontFamily: 'Roboto-Regular'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
