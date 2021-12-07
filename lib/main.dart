import 'dart:async';
import 'package:ecojivan/screens/login.dart';
import 'package:ecojivan/screens/onboarding.dart';
import 'package:ecojivan/screens/splash.dart';
import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Splash Screen',
	theme: ThemeData(
		primarySwatch: Colors.brown,
	),
	debugShowCheckedModeBanner: false,
  initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => SplashScreen(),
        '/login': (context) => Login(),
        '/intro': (context) => Onboarding(),
        
      },
	);
}
}




