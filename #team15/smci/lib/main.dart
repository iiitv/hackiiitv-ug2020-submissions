import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
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
import 'package:smci/Personal_page/Bank/bank.dart';
import 'package:smci/Personal_page/Doctor/Doctor_med.dart';
import 'package:smci/Personal_page/Doctor/Prescription.dart';
import 'package:smci/Personal_page/Doctor/doctor.dart';
import 'package:smci/Personal_page/Mall/mall.dart';
import 'package:smci/Personal_page/Mall/mall_todolist.dart';
import 'package:smci/Personal_page/personal_page.dart';
import 'package:smci/home_page.dart';
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
          "/DevelopmentPage_ongoing_detail_1": (context) =>
              Dev_ongoingDetail1(),
          "/DevelopmentPage_ongoing_detail_2": (context) =>
              Dev_ongoingDetail2(),
          "/DevelopmentPage_ongoing_detail_3": (context) =>
              Dev_ongoingDetail3(),
          "/DevelopmentPage_ongoing_detail_4": (context) =>
              Dev_ongoingDetail4(),
          "/DevelopmentPage_Future": (context) => Dev_Future(),
          "/DevelopmentPage_Future_detail_1": (context) => Dev_FutureDetail1(),
          "/DevelopmentPage_Future_detail_2": (context) => Dev_FutureDetail2(),
          "/DevelopmentPage_Future_detail_3": (context) => Dev_FutureDetail3(),
          "/DevelopmentPage_Future_detail_4": (context) => Dev_FutureDetail4(),
          "/DevelopmentPage_Await": (context) => Dev_Await(),
          "/DevelopmentPage_Await_detail_1": (context) => Dev_AwaitDetail1(),
          "/DevelopmentPage_Await_detail_2": (context) => Dev_AwaitDetail2(),
          "/DevelopmentPage_Feedback": (context) => Dev_feedback(),
          "/PersonalPage": (context) => Personal_page(),
          "/PersonalPage_Mall_todo": (context) => Future_Mall_todo(),
          "/PersonalPage_Mall": (context) => Future_mall(),
          "/PersonalPage_Doctor": (context) => Personal_doctor(),
          "/PersonalPage_DoctorMed": (context) => Personal_buyMed(),
          "/PersonalPage_DoctorPres": (context) => Personal_Prescription(),
          "/PersonalPage_Bank": (context) => Personal_bank(),
          "/Homepage": (context) => Homepage(),
        },
        // home: Login(),
        // home: Dev_main(),
        // home: Future_mall(),
        // home: Personal_doctor(),
        // home: Personal_bank(),
        // home: Homepage(),
        home: AnimatedSplashScreen(
            duration: 1000,
            // splash: Icons.person,
            splash: Image.asset(
              "img/ic.jpeg",
            ),
            nextScreen: Login(),
            splashTransition: SplashTransition.fadeTransition,
            // pageTransitionType: PageTransitionType.rightToLeft,
            backgroundColor: Colors.orange)
        // home: AnimatedSplashScreen.withScreenFunction(
        //   curve: Curves.easeInCirc,
        //   splash: 'img/ic.jpeg',
        //   screenFunction: () async {
        //     return Login();
        //   },
        //   splashTransition: SplashTransition.scaleTransition,
        //   pageTransitionType: PageTransitionType.rightToLeft,
        //   backgroundColor: Colors.orange,
        // )
        );
  }
}
