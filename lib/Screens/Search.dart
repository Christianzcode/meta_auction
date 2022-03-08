import 'package:flutter/material.dart';
import 'package:meta_auction/Helpers/watch_fake.dart';
import 'package:meta_auction/Models/watch.dart';
import 'package:meta_auction/Screens/general_details.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Watch> list = wat;
  List<Watch> listt=[];
  @override
  Widget build(BuildContext context) {
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
            backgroundColor: Colors.white,
            body: Column(
              children: [
                Container(
                  width: mediaQueryWidth,
                  height: mediaQueryHeight * 0.1,
                  color: Theme
                      .of(context)
                      .primaryColor,
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.settings, color: Colors.white,),
                        onPressed: () {
                          Navigator.pushNamed(context, 'Settings');
                        },
                      ),
                      Expanded(child: _searchBar()),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'Favorites');
                          },
                          icon: const Icon(
                            Icons.favorite_border, color: Colors.white,))
                    ],
                  ),
                ),
                SizedBox(height: mediaQueryHeight*0.86, child:
                    listt.isEmpty?
                ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, i){
                  return GestureDetector(
                    onTap: (){Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                GeneralDetails(
                                    watch: list[i])));},
                    child: Card(child: Row(children: [
                      Image.asset(list[i].image),
                      Text(list[i].name, style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontSize: 15),)
                    ],)),
                  );
                }):  ListView.builder(
                        itemCount: listt.length,
                        itemBuilder: (context, i){
                          return GestureDetector(
                            onTap: (){Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        GeneralDetails(
                                            watch: listt[i])));},
                            child: Card(child: Row(children: [
                              Image.asset(listt[i].image),
                              Text(listt[i].name, style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontSize: 15),)
                            ],)),
                          );
                        })
                )
              ],
            )));
  }

  _searchBar() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery
              .of(context)
              .size
              .width * 0.05),
      child: TextField(
        autofocus: false,
        onChanged: (searchText) {
          searchText = searchText.toLowerCase();
          setState(() {
            listt.clear();
            for (int i = 0; i < list.length; i++) {
              String data = list[i].name;
              if (data.toLowerCase().contains(searchText.toLowerCase())) {
                listt.add(list[i]);
              }
            }
          });
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
              vertical: MediaQuery
                  .of(context)
                  .size
                  .height * 0.01),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(50)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme
                  .of(context)
                  .primaryColor)),
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search patient',
          suffixIcon: IconButton(icon: Icon(Icons.cancel_outlined), onPressed: ()
          {
          Navigator.pop(context);
          },
        ),
        prefixIcon: const Icon(
          Icons.search_rounded,
        ),
        prefixIconColor: const Color.fromRGBO(157, 157, 157, 1),
        hintStyle: const TextStyle(
            color: Color.fromRGBO(157, 157, 157, 1),
            fontSize: 15,
            fontFamily: 'Roboto-Regular'),
      ),
    ),);
  }
}
