import 'dart:async';
import 'package:ecojivan/screens/bottomnav.dart';
import 'package:ecojivan/screens/doctors.dart';
import 'package:ecojivan/screens/login.dart';
import 'package:ecojivan/screens/registerthree.dart';
import 'package:ecojivan/screens/registertwo.dart';
import 'package:ecojivan/screens/registration.dart';
import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	theme: ThemeData(
		primarySwatch: Colors.brown,
	),
	debugShowCheckedModeBanner: false,
  initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => Registration(),
        '/rtwo': (context) => RegistrationTwo(),
        '/rthree': (context) => RegistrationThree(),
        '/login': (context) => Login(),
        '/register': (context) => Registration(),
        '/home': (context) => BottomNav(),
        '/doc': (context) => Doctors(),
        
      },
	);
}
}




