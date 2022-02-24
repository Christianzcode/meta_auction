import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta_auction/model/filter.dart';

class FilterAndSort extends StatefulWidget {
  const FilterAndSort({Key? key}) : super(key: key);

  @override
  _FilterAndSortState createState() => _FilterAndSortState();
}

class _FilterAndSortState extends State<FilterAndSort> {
  late bool checked = false;
  late bool checked1 = false;
  late List<Filter> chosen = [];
  late List<Filter> list1 = [
    Filter(
        name: 'All Watches',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Boutique',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Metal',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Brand',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Braclet',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Classic',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Expensive',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Price',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Price',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
  ];

  late List<Filter> list2 = [
    Filter(
        name: 'All Watches',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Boutique',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Metal',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Brand',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Braclet',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Classic',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Expensive',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Price',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
    Filter(
        name: 'Price',
        color: Color.fromRGBO(112, 112, 112, 0.1),
        textColor: Colors.black),
  ];


  @override
  void initState(){
   checked = false;
   checked1 = false;
    list1 = [
      Filter(
          name: 'All Watches',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Boutique',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Metal',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Brand',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Braclet',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Classic',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Expensive',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Price',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Price',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
    ];
    list2 = [
      Filter(
          name: 'All Watches',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Boutique',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Metal',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Brand',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Braclet',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Classic',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Expensive',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Price',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
      Filter(
          name: 'Price',
          color: Color.fromRGBO(112, 112, 112, 0.1),
          textColor: Colors.black),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(91, 63, 112, 1),
          title: Center(
            child: Text(
              'FILTER AND SORT',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Roboto-Medium'),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body:Column(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  checked=!checked;
                });
              },
              child: Container(
                height: mediaQueryHeight*0.08,
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black,width: 0.2),),),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [
                  Text('Category',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'Roboto-Medium'),),
                  Icon(checked? Icons.keyboard_arrow_up: Icons.keyboard_arrow_down)
                ],),
              ),
            ),
            checked? Container(
              color: Color.fromRGBO(112, 112, 112, 0.1),
              width: mediaQueryWidth,
              height: mediaQueryHeight * 0.2,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: mediaQueryWidth * 0.08,
                  mainAxisSpacing: mediaQueryHeight * 0.02,
                  childAspectRatio: 2 / 1.7,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                    EdgeInsets.only(top: mediaQueryHeight * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (list1[index].color == Color.fromRGBO(112, 112, 112, 0.2)) {
                            list1[index].color = Theme.of(context).primaryColor;
                            list1[index].textColor = Colors.white;
                            chosen.add(list1[index]);
                          } else {
                            list1[index].color = Color.fromRGBO(112, 112, 112, 0.2);
                            list1[index].textColor = Colors.black;
                            chosen.removeWhere((e) => e==list1[index]);
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: list1[index].color,
                        ),
                        child: Text(
                          list1[index].name,
                          style: TextStyle(
                            color: list1[index].textColor,
                            fontFamily: 'Roboto-Regular',
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  );
                },
              ),
            ): Container(),
            GestureDetector(
              onTap: (){
                setState(() {
                  checked1=!checked1;
                });
              },
              child: Container(
                height: mediaQueryHeight*0.08,
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black,width: 0.2),),),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [
                  Text('Category',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'Roboto-Medium'),),
                  Icon(checked1? Icons.keyboard_arrow_up: Icons.keyboard_arrow_down)
                ],),
              ),
            ),
            checked1? Container(
              color: Color.fromRGBO(112, 112, 112, 0.1),
              width: mediaQueryWidth,
              height: mediaQueryHeight * 0.2,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: mediaQueryWidth * 0.08,
                  mainAxisSpacing: mediaQueryHeight * 0.02,
                  childAspectRatio: 2 / 1.7,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                    EdgeInsets.only(top: mediaQueryHeight * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (list2[index].color == Color.fromRGBO(112, 112, 112, 0.2)) {
                            list2[index].color = Theme.of(context).primaryColor;
                            list2[index].textColor = Colors.white;
                            chosen.add(list2[index]);
                          } else {
                            list2[index].color = Color.fromRGBO(112, 112, 112, 0.2);
                            list2[index].textColor = Colors.black;
                            chosen.removeWhere((e) => e==list2[index]);
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: list2[index].color,
                        ),
                        child: Text(
                          list2[index].name,
                          style: TextStyle(
                            color: list2[index].textColor,
                            fontFamily: 'Roboto-Regular',
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  );
                },
              ),
            ): Container(),
          ],
        )
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Container(
        //         padding: EdgeInsets.symmetric(
        //             horizontal: mediaQueryWidth * 0.05,
        //             vertical: mediaQueryHeight * 0.001),
        //         width: mediaQueryWidth * 0.9,
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(12),
        //             border: Border.all(color: Colors.grey, width: 2)),
        //         child: DropdownButtonHideUnderline(
        //           child: DropdownButton(
        //             // Initial Value
        //             value: dropdownvalue,
        //             isExpanded: true,
        //             // Down Arrow Icon
        //             icon: const Icon(Icons.keyboard_arrow_down),
        //
        //             // Array list of items
        //             items: items.map((String items) {
        //               return DropdownMenuItem(
        //                 value: items,
        //                 child: Text(items),
        //               );
        //             }).toList(),
        //             // After selecting the desired option,it will
        //             // change button value to selected value
        //             onChanged: (String? newValue) {
        //               setState(() {
        //                 dropdownvalue = newValue!;
        //               });
        //             },
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        ),
      );
  }
}
