import 'dart:async';
import 'package:ecojivan/screens/bottomnav.dart';
import 'package:ecojivan/screens/consult.dart';
import 'package:ecojivan/screens/diet.dart';
import 'package:ecojivan/screens/doctors.dart';
import 'package:ecojivan/screens/edit.dart';
import 'package:ecojivan/screens/login.dart';
import 'package:ecojivan/screens/payment.dart';
import 'package:ecojivan/screens/product.dart';
import 'package:ecojivan/screens/registerthree.dart';
import 'package:ecojivan/screens/registertwo.dart';
import 'package:ecojivan/screens/registration.dart';
import 'package:ecojivan/screens/reports.dart';
import 'package:ecojivan/screens/settings.dart';
import 'package:ecojivan/screens/sliverappbar.dart';
import 'package:ecojivan/screens/splash.dart';
import 'package:ecojivan/screens/try.dart';
import 'package:ecojivan/screens/verification.dart';
import 'package:ecojivan/screens/workout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //primarySwatch: Colors.brown,
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => SplashScreen(),
        '/verification': (context) => Verification(),
        '/register': (context) => Registration(),
        '/rtwo': (context) => RegistrationTwo(),
        '/payments': (context) => Payment(),
        '/settings': (context) => Settings(),
        '/home': (context) => BottomNav(),
        '/doc': (context) => Doctors(),
        '/edit': (context) => EditProfile(),
        '/diet': (context) => Diet(),
        '/sliver': (context) => MainCollapsingToolbar(),
        '/consult': (context) => Consult(),
        '/product': (context) => Product(),
        '/reports': (context) => WeeklyReports(),
        '/workout': (context) => Workout(),
        '/test': (context) => VisibilityExample(),
      },
    );
  }
}
