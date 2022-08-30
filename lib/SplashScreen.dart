import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:final_project/loginOrSignup.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'Splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        backgroundImage: const AssetImage('assets/images/plants2.jpg'),
        navigator: LogInOrSingnup(),
       // durationInSeconds: 2,
        //backgroundColor: Colors.amber ,
      ),

    );


  }
}