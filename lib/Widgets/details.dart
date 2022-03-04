
import 'package:flutter/material.dart';
import 'package:meta_auction/Helpers/watch_fake.dart';
import 'package:meta_auction/Models/watch.dart';

class Details extends StatelessWidget {
  final Watch watch;

   const Details({ this.watch});

  @override
  Widget build(BuildContext context) {
    List w = wat;
    int index = 0;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top:mediaQueryHeight * 0.1),
      child: Column(

        children: [

          Container(
              // padding: EdgeInsets.only(top:mediaQueryHeight * 0.1),
              height: 36,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(232, 232, 232, 0.3),
                border:  Border(
                  // top: BorderSide(
                  //   width: 1.0,
                  //   color: Colors.black26,
                  // ),
                  bottom: BorderSide(
                    color: Color.fromRGBO(225, 225, 225, 1),
                    width: 1.0,
                  ),
                ),
              ),

              //  margin: EdgeInsets.fromLTRB(0, 40, 0, 150),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Brand",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(w[index].brand,
                        style: const TextStyle(
                          color: Colors.black45,
                        )),
                  ],
                ),
              )),
          Container(

              height: 36,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(232, 232, 232, 0.3),


                border:  Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(225, 225, 225, 1),
                    width: 1.0,
                  ),
                ),
              ),

              //  margin: EdgeInsets.fromLTRB(0, 40, 0, 150),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Year",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text('${w[index].year}',
                        style: const TextStyle(
                          color: Colors.black45,
                        )),
                  ],
                ),
              )),
          Container(
              height: 36,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(232, 232, 232, 0.3),
                border:  Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(225, 225, 225, 1),
                    width: 1.0,
                  ),
                ),
              ),

              //  margin: EdgeInsets.fromLTRB(0, 40, 0, 150),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Condition",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(w[index].condition,
                        style: const TextStyle(
                          color: Colors.black45,
                        )),
                  ],
                ),
              )),
          Container(
              height: 36,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(232, 232, 232, 0.3),


                border:  Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(225, 225, 225, 1),
                    width: 1.0,
                  ),
                ),
              ),

              //  margin: EdgeInsets.fromLTRB(0, 40, 0, 150),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Dial Color",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(w[index].dialColor,
                        style: const TextStyle(
                          color: Colors.black45,
                        )),
                  ],
                ),
              )),
          Container(
              height: 36,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(232, 232, 232, 0.3),

                border:  Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(225, 225, 225, 1),
                    width: 1.0,
                  ),
                ),
              ),

              //  margin: EdgeInsets.fromLTRB(0, 40, 0, 150),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Metal",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(w[index].metal,
                        style: const TextStyle(
                          color: Colors.black45,
                        )),
                  ],
                ),
              )),
          Container(
              height: 36,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(232, 232, 232, 0.3),

                border: Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(225, 225, 225, 1),
                    width: 1.0,
                  ),
                ),
              ),

              //  margin: EdgeInsets.fromLTRB(0, 40, 0, 150),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Status",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(w[index].status,
                        style: const TextStyle(
                          color: Colors.black45,
                        )),
                  ],
                ),
              )),
          Container(
              height: 36,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(232, 232, 232, 0.3),

                border:  Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(225, 225, 225, 1),
                    width: 1.0,
                  ),
                ),
              ),

              //  margin: EdgeInsets.fromLTRB(0, 40, 0, 150),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Last Bid",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(w[index].lastBid,
                        style: const TextStyle(
                          color: Colors.black45,
                        )),
                  ],
                ),
              )),
          Container(
              height: 36,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(232, 232, 232, 0.3),

                border:  Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(225, 225, 225, 1),
                    width: 1.0,
                  ),
                ),
              ),

              //  margin: EdgeInsets.fromLTRB(0, 40, 0, 150),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Country",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(w[index].country,
                        style: const TextStyle(
                          color: Colors.black45,
                        )),
                  ],
                ),
              )),
          Container(
              height: 36,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(232, 232, 232, 0.3),

              ),

              //  margin: EdgeInsets.fromLTRB(0, 40, 0, 150),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: mediaQueryWidth * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Date",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text('${w[index].date}',
                        style: const TextStyle(
                          color: Colors.black45,
                        )),
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: mediaQueryHeight * 0.1),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Add To Favorites',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto-Medium'),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: mediaQueryWidth * 0.15,
                    vertical: mediaQueryHeight * 0.025),
                primary: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
