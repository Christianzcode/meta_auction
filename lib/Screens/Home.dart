import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Fake%20Data/watch_fake.dart';
import '../model/watch.dart';

class HomePage extends StatefulWidget {



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {

    List<Watch> W = wat;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          toolbarHeight: mediaQueryHeight * 0.08 ,backgroundColor:Color.fromRGBO(91, 63, 112, 1),
          leading: IconButton(icon:Icon(Icons.settings), onPressed: (){},),
          actions: [
            IconButton(onPressed: (){
             },

               icon:Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.heart))
          ],
        ),
        body:
        Column(
          children: [
            SizedBox(height: mediaQueryHeight * 0.02,),
            Container(
                margin: EdgeInsets.fromLTRB(0, mediaQueryHeight * 0.01, 0,mediaQueryHeight * 0.01),
                color:Colors.black12,

                child:

                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: mediaQueryHeight * 0.03),
                      child: Text('TOP SELLING ',
                        style: TextStyle( fontSize: 20,
                          fontWeight: FontWeight.bold,),),

                    ),
                    Container(
                      padding: EdgeInsets.only(right: mediaQueryHeight * 0.03),
                      child:   TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See all >>",
                            style: TextStyle(


                                fontFamily: 'Roboto-Regular',
                                color: Colors.black54

                            ),
                          )),)
                  ],

                )),
  //           Container(child: ListView.builder(
  //             itemBuilder:( context, index){
  //               List<Watch> w = wat;
  //
  //             return Column(
  //               children: [
  //                 // Container(
  //                 //   height: mediaQueryHeight * 0.02,
  //                 //   width: mediaQueryWidth *0.02,
  //                 //   child: Image.asset(Widget.[index].image)
  //                 //   )
  //   ],);
  //   }
  //   )
  //
  //
  // ),
            Container(

              child: ElevatedButton(
                onPressed: () {
                  ;
                },
                child: const Text(
                  ' Subscribe To See The Newest Auction ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto-Bold'),
                ),
                style: ElevatedButton.styleFrom(

                  elevation: 0.1,
                  primary:Color.fromRGBO(91, 63, 112, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox( width: mediaQueryWidth* 0.06,),
                Text('Filter By ', style: TextStyle(fontSize: 18),),
                IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.sort_down),),
                Container(

                  child: ElevatedButton(onPressed: (){}, child: const Text('All Watches', style: TextStyle(color: Color.fromRGBO(91, 63, 112, 1),),),
                    style: ElevatedButton.styleFrom(

                    elevation:1,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color.fromRGBO(91, 63, 112, 1),),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),),
                ),
                SizedBox( width: mediaQueryWidth* 0.02,),
                ElevatedButton(onPressed: (){}, child: const Text('Top Selling', style: TextStyle(color: Color.fromRGBO(91, 63, 112, 1),),),   style: ElevatedButton.styleFrom(

                  elevation: 1,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color.fromRGBO(91, 63, 112, 1),),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),)

              ],
            ),

// Container(
//   child:   ListView.builder(itemBuilder: (context, i ){
//     List<Watch> W = wat;
//
//     return Column (
//       children: [
//         Container(
//           height: mediaQueryHeight*0.5,
//           width: mediaQueryWidth *0.9,
//           // child: Image.asset(widget.w[i].images),
//         )
//       ],
//     );
//
//   },),
// )

          ],
        ),


      ),

    );



  }
}
