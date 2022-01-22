import 'dart:async';

import 'package:ecojivan/constraint.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
@override
_SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
@override
void initState() {
	super.initState();
   startTimer();
}


 void navigateUser() async{
    if (FirebaseAuth.instance.currentUser != null) {
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
    } else {
     Navigator.of(context).pushNamedAndRemoveUntil('/verification', (route) => false);
    }
  }


void startTimer() {
    Timer(Duration(seconds: 3), () {
      navigateUser();
    });
  }



@override
Widget build(BuildContext context) {
	return Container(
	color: TertiaryColor,
	//child:FlutterLogo(size:MediaQuery.of(context).size.height)
  child: Padding(
    padding: paddingall,
    child: Image(image: AssetImage('assets/elogo.png')),
  ),
	);
}
}