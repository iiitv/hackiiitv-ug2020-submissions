import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smci/Development_page/Dev_Await/Dev_Await.dart';
import 'package:smci/Development_page/Dev_Await/Dev_Await_detail1.dart';
import 'package:smci/Development_page/Dev_Await/Dev_Await_detail2.dart';
import 'package:smci/Development_page/Dev_Future/Dev_Future.dart';
import 'package:smci/Development_page/Dev_Future/Dev_Future_detail1.dart';
import 'package:smci/Development_page/Dev_Future/Dev_Future_detail2.dart';
import 'package:smci/Development_page/Dev_Future/Dev_Future_detail3.dart';
import 'package:smci/Development_page/Dev_Future/Dev_Future_detail4.dart';
import 'package:smci/Development_page/Dev_on-going/Dev_on-going.dart';
import 'package:smci/Development_page/Dev_on-going/Dev_ongoing_detail1.dart';
import 'package:smci/Development_page/Dev_on-going/Dev_ongoing_detail2.dart';
import 'package:smci/Development_page/Dev_on-going/Dev_ongoing_detail3.dart';
import 'package:smci/Development_page/Dev_on-going/Dev_ongoing_detail4.dart';
import 'package:smci/Development_page/Development_around.dart';
import 'package:smci/Development_page/Feedback.dart';
import 'package:smci/Personal_page/mall.dart';
import 'package:smci/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmCi',
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.autoScale(450, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
        // background: Container(color: Color(0xFFF5F5F5))
      ),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      routes: {
        "/LoginPage": (context) => Login(),
        "/DevelopmentPage": (context) => Dev_main(),
        "/DevelopmentPage_ongoing": (context) => Dev_ongoing(),
        "/DevelopmentPage_ongoing_detail_1": (context) => Dev_ongoingDetail1(),
        "/DevelopmentPage_ongoing_detail_2": (context) => Dev_ongoingDetail2(),
        "/DevelopmentPage_ongoing_detail_3": (context) => Dev_ongoingDetail3(),
        "/DevelopmentPage_ongoing_detail_4": (context) => Dev_ongoingDetail4(),
        "/DevelopmentPage_Future": (context) => Dev_Future(),
        "/DevelopmentPage_Future_detail_1": (context) => Dev_FutureDetail1(),
        "/DevelopmentPage_Future_detail_2": (context) => Dev_FutureDetail2(),
        "/DevelopmentPage_Future_detail_3": (context) => Dev_FutureDetail3(),
        "/DevelopmentPage_Future_detail_4": (context) => Dev_FutureDetail4(),
        "/DevelopmentPage_Await": (context) => Dev_Await(),
        "/DevelopmentPage_Await_detail_1": (context) => Dev_AwaitDetail1(),
        "/DevelopmentPage_Await_detail_2": (context) => Dev_AwaitDetail2(),
        "/DevelopmentPage_Feedback": (context) => Dev_feedback(),
        "/PersonalPage_Mall": (context) => Future_Mall(),
      },
      // home: Login(),
      // home: Dev_main(),
      home: Future_Mall(),
    );
  }
}
