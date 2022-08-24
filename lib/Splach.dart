import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:lavie/LoginOrSignup.dart';

class Splash extends StatelessWidget {
// need to make it screen wih text and image
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        backgroundColor: Color(0xFFFFFF),
        logo:Image(image: AssetImage('assets/images/Group1000003302.png')) ,
        navigator: LoginOrSignup()
        // durationInSeconds: 2,
        //backgroundColor: Colors.amber ,
      ),
    );
  }
}
