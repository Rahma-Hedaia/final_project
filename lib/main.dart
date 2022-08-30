import 'package:final_project/Chat.dart';
// import 'package:final_project/HomeTest.dart';
import 'package:final_project/NewPost.dart';
import 'package:final_project/News.dart';
import 'package:final_project/PlantDetails.dart';
import 'package:final_project/Plant_Calculator.dart';
import 'package:final_project/Profile.dart';
import 'package:final_project/ReapingCrops.dart';
import 'package:final_project/SignUp.dart';
import 'package:final_project/SplashScreen.dart';
import 'package:final_project/TimeLine.dart';
import 'package:final_project/loginOrSignup.dart';
import 'package:final_project/Home.dart';
import 'package:flutter/material.dart';

void main() {

  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
   // home: HomeTest(),
    routes: {
      SplashScreen.routeName:(context) => SplashScreen(),
      Newpost.routeName:(context) => Newpost(),
      Plant_news.routeName:(context) => Plant_news(),
      PlantCalculator.routeName:(context) => PlantCalculator(),
      PlantDetails.routeName:(context) => PlantDetails(),
      Profile.routeName:(context) => Profile(),
      ReapingCrop.routeName:(context) => ReapingCrop(),
      Home.routeName:(context) => Home(),
      Signup.routeName:(context) => Signup(),
      TimeLine.routeName:(context) => TimeLine(),
      Chats.routeName:(context) => Chats(),
     // HomeTest.routeName:(context) => HomeTest(),
    },
    initialRoute: SplashScreen.routeName,
  ));
}


