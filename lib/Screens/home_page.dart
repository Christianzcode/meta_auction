import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta_auction/Models/watch.dart';
import 'package:meta_auction/Screens/general_details.dart';
import '../Helpers/watch_fake.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Watch> list = wat;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                onPressed: () {
                  Navigator.pushNamed(context, 'Favorites');
                },
                icon: const Icon(CupertinoIcons.heart))
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: mediaQueryHeight * 0.02),
              child: Container(
                  height: mediaQueryHeight * 0.33,
                  //padding: EdgeInsets.only(top:mediaQueryHeight * 0.02,),
                  // margin: EdgeInsets.fromLTRB(
                  //     0, mediaQueryHeight * 0.01, 0, mediaQueryHeight * 0.01),
                  color: const Color.fromRGBO(232, 232, 232, 0.3),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mediaQueryWidth * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'TOP SELLING ',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context,'SeeAll');
                                },
                                child: const Text(
                                  "See all >>",
                                  style: TextStyle(
                                      fontFamily: 'Roboto-Regular',
                                      color: Colors.black54),
                                ))
                          ],
                        ),
                        Container(
                          height: mediaQueryHeight * 0.25,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: list.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                GeneralDetails(watch: list[index])));                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(list[index].image),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: mediaQueryHeight * 0.02,
                                        ),
                                        child: Text(
                                          list[index].name,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(39, 40, 50, 1),
                                              fontSize: 15,
                                              fontFamily: 'Roboto-Regular'),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: mediaQueryHeight * 0.02),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  ' Subscribe To See The Newest Auction ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto-Medium'),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: mediaQueryWidth * 0.13,
                      vertical: mediaQueryHeight * 0.013),
                  elevation: 0.1,
                  primary: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: mediaQueryWidth * 0.06,
                  ),
                  child: const Text(
                    'Filter By ',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Filter');
                  },
                  icon: const Icon(CupertinoIcons.sort_down),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'SeeAll');
                  },
                  child: Text(
                    'All Watches',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: mediaQueryWidth * 0.02,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Top Selling',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 3,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      SizedBox(
                        height: mediaQueryHeight * 0.5,
                        width: mediaQueryWidth * 0.9,
                        child: Image.asset(list[i].image),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
