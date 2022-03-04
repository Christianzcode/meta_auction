import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Helpers/watch_fake.dart';

class Analytics extends StatefulWidget {
  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  FontWeight year;
  FontWeight month;
  FontWeight week;
  List<FlSpot> weekList = weekLists;
  List<FlSpot> monthList = monthLists;
  List<FlSpot> yearList = yearLists;
  LineChartData lineChart;

  // String text =
  //     '${DateFormat.d().format(DateTime.now())}-${int.parse(DateFormat.d().format(DateTime.now())) + 6} ${DateFormat.MMM().format(DateTime.now())}, ${DateFormat.y().format(DateTime.now())}';

  @override
  void initState() {
    year = FontWeight.bold;
    month = FontWeight.normal;
    week = FontWeight.normal;
    lineChart = yearData;
    // text =
    //     '${DateFormat.d().format(DateTime.now())}-${int.parse(DateFormat.d().format(DateTime.now())) + 6} ${DateFormat.MMM().format(DateTime.now())}, ${DateFormat.y().format(DateTime.now())}';
  }

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: mediaQueryHeight * 0.07,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'September 2021',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  letterSpacing: 2,
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      year = FontWeight.normal;
                      month = FontWeight.normal;
                      week = FontWeight.bold;
                      lineChart = weekData;
                      //text = '2020-2022';
                    });
                  },
                  child: Text(
                    'Week',
                    style: TextStyle(color: Colors.black, fontWeight: week),
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      month = FontWeight.bold;
                      year = FontWeight.normal;
                      week = FontWeight.normal;
                      lineChart = monthData;
                      //text = 'September 2021';
                    });
                  },
                  child: Text(
                    'Month',
                    style: TextStyle(color: Colors.black, fontWeight: month),
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      week = FontWeight.normal;
                      year = FontWeight.bold;
                      month = FontWeight.normal;
                      lineChart = yearData;
                      // text =
                      //     '${DateFormat.d().format(DateTime.now())}-${int.parse(DateFormat.d().format(DateTime.now())) + 6} ${DateFormat.MMM().format(DateTime.now())}, ${DateFormat.y().format(DateTime.now())}';
                    });
                  },
                  child: Text(
                    'Year',
                    style: TextStyle(color: Colors.black, fontWeight: year),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: mediaQueryHeight * 0.4,
          width: mediaQueryWidth * 0.9,
          child: LineChart(
            lineChart,
            swapAnimationDuration: const Duration(milliseconds: 500),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: mediaQueryWidth*0.05),
          child: SizedBox(
            height: mediaQueryHeight * 0.3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                              AssetImage('assets/images/pngegg.png'),
                              color: Colors.green,
                            ),
                            Text(
                              '  September 12 2022',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        Text(
                          '200000USD',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.thumb_down_alt,
                              color: Colors.red,
                              size: 20,
                            ),
                            Text(
                              '  Febreuary 10 2022',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        Text(
                          '20000USD',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                              AssetImage('assets/images/pngegg.png'),
                              color: Colors.green,
                            ),
                            Text(
                              '  April 7 2021',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        Text(
                          '200000USD',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  LineChartData get weekData => LineChartData(
        lineTouchData: lineTouchWeekData,
        gridData: gridWeekData,
        titlesData: titlesWeekData,
        borderData: borderWeekData,
        lineBarsData: lineBarsWeekData,
        minX: 0,
        maxX: 6,
        maxY: 5,
        minY: 0,
      );

  LineTouchData get lineTouchWeekData => LineTouchData(
        enabled: true,
        touchSpotThreshold: double.maxFinite,
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.transparent,
        ),
      );

  FlTitlesData get titlesWeekData => FlTitlesData(
        bottomTitles: bottomWeekTitles,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: leftTitles(
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '0';
              case 2:
                return '250';
              case 4:
                return '500';
            }
            return '';
          },
        ),
      );

  List<LineChartBarData> get lineBarsWeekData => [
        lineChartBarWeekData,
      ];

  SideTitles leftTitles({GetTitleFunction getTitles}) => SideTitles(
        getTitles: getTitles,
        showTitles: true,
        margin: 1,
        interval: 1,
        reservedSize: 40,
        getTextStyles: (context, value) => const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      );

  SideTitles get bottomWeekTitles => SideTitles(
        showTitles: true,
        reservedSize: 40,
        margin: 30,
        interval: 1,
        getTextStyles: (context, value) => const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        getTitles: (value) {
          switch (value.toInt()) {
            case 0:
              return 'M';
            case 1:
              return 'T';
            case 2:
              return 'W';
            case 3:
              return 'T';
            case 4:
              return 'F';
            case 5:
              return 'S';
            case 6:
              return 'S';
          }
          return '';
        },
      );

  FlGridData get gridWeekData => FlGridData(show: false);

  FlBorderData get borderWeekData => FlBorderData(
        show: false,
      );

  LineChartBarData get lineChartBarWeekData => LineChartBarData(
        isCurved: true,
        colors: [Color.fromRGBO(198, 121, 231, 0.9019607843137255)],
        barWidth: 1,
        isStrokeCapRound: false,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: true, colors: [
          Color.fromRGBO(208, 136, 236, 0.3607843137254902),
          Colors.white
        ]),
        spots: weekList,
      );

  LineChartData get monthData => LineChartData(
        lineTouchData: lineTouchMonthData,
        gridData: gridMonthData,
        titlesData: titlesMonthData,
        borderData: borderMonthData,
        lineBarsData: lineBarsMonthData,
        minX: 0,
        maxX: 11,
        maxY: 5,
        minY: 0,
      );

  LineTouchData get lineTouchMonthData => LineTouchData(
    enabled: true,
    touchSpotThreshold: double.maxFinite,
    handleBuiltInTouches: true,
    touchTooltipData: LineTouchTooltipData(
      tooltipBgColor: Colors.transparent,
    ),
  );

  FlTitlesData get titlesMonthData => FlTitlesData(
        bottomTitles: bottomMonthTitles,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: leftTitles(
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '0';
              case 2:
                return '250';
              case 4:
                return '500';
            }
            return '';
          },
        ),
      );

  List<LineChartBarData> get lineBarsMonthData => [
        lineChartBarMonthData,
      ];

  SideTitles leftMonthTitles({GetTitleFunction getTitles}) => SideTitles(
        getTitles: getTitles,
        showTitles: true,
        margin: 1,
        interval: 1,
        reservedSize: 40,
        getTextStyles: (context, value) => const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      );

  SideTitles get bottomMonthTitles => SideTitles(
        showTitles: true,
        reservedSize: 40,
        margin: 30,
        interval: 1,
        getTextStyles: (context, value) => const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        getTitles: (value) {
          switch (value.toInt()) {
            case 0:
              return '1';
            case 1:
              return '2';
            case 2:
              return '3';
            case 3:
              return '4';
            case 4:
              return '5';
            case 5:
              return '6';
            case 6:
              return '7';
            case 7:
              return '8';
            case 8:
              return '9';
            case 9:
              return '10';
            case 10:
              return '11';
            case 11:
              return '12';
          }
          return '';
        },
      );

  FlGridData get gridMonthData => FlGridData(
        show: false,
      );

  FlBorderData get borderMonthData => FlBorderData(
        show: false,
      );

  LineChartBarData get lineChartBarMonthData => LineChartBarData(
        isCurved: true,
        colors: [Color.fromRGBO(198, 121, 231, 0.9019607843137255)],
        barWidth: 1,
        isStrokeCapRound: false,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: true, colors: [
          Color.fromRGBO(208, 136, 236, 0.3607843137254902),
          Colors.white
        ]),
        spots: monthList,
      );

  LineChartData get yearData => LineChartData(
        lineTouchData: lineTouchYearData,
        gridData: gridYearData,
        titlesData: titlesYearData,
        borderData: borderYearData,
        lineBarsData: lineBarsYearData,
        minX: 0,
        maxX: 2,
        maxY: 5,
        minY: 0,
      );

  LineTouchData get lineTouchYearData => LineTouchData(
    enabled: true,
    touchSpotThreshold: double.maxFinite,
    handleBuiltInTouches: true,
    touchTooltipData: LineTouchTooltipData(
      tooltipBgColor: Colors.transparent,
    ),
  );

  FlTitlesData get titlesYearData => FlTitlesData(
        bottomTitles: bottomYearTitles,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: leftTitles(
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '0';
              case 2:
                return '250';
              case 4:
                return '500';
            }
            return '';
          },
        ),
      );

  List<LineChartBarData> get lineBarsYearData => [
        lineChartBarYearData,
      ];

  SideTitles leftYearTitles({GetTitleFunction getTitles}) => SideTitles(
        getTitles: getTitles,
        showTitles: true,
        margin: 1,
        interval: 1,
        reservedSize: 40,
        getTextStyles: (context, value) => const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      );

  SideTitles get bottomYearTitles => SideTitles(
        showTitles: true,
        reservedSize: 40,
        margin: 30,
        interval: 1,
        getTextStyles: (context, value) => const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        getTitles: (value) {
          switch (value.toInt()) {
            case 0:
              return '2020';
            case 1:
              return '2021';
            case 2:
              return '2022';
          }
          return '';
        },
      );

  FlGridData get gridYearData => FlGridData(show: false);

  FlBorderData get borderYearData => FlBorderData(
        show: false,
      );

  LineChartBarData get lineChartBarYearData => LineChartBarData(
        isCurved: true,
        colors: [Color.fromRGBO(198, 121, 231, 0.9019607843137255)],
        barWidth: 1,
        isStrokeCapRound: false,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: true, colors: [
          Color.fromRGBO(208, 136, 236, 0.3607843137254902),
          Colors.white
        ]),
        spots: yearList,
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<FlSpot>('monthList', monthList));
  }
}
