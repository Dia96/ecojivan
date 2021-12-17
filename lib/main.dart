import 'dart:async';
import 'package:ecojivan/screens/bottomnav.dart';
import 'package:ecojivan/screens/consult.dart';
import 'package:ecojivan/screens/cuisines.dart';
import 'package:ecojivan/screens/date.dart';
import 'package:ecojivan/screens/diet.dart';
import 'package:ecojivan/screens/doctors.dart';
import 'package:ecojivan/screens/edit.dart';
import 'package:ecojivan/screens/healthyrecipe.dart';
import 'package:ecojivan/screens/indian.dart';
import 'package:ecojivan/screens/payment.dart';
import 'package:ecojivan/screens/physiolist.dart';
import 'package:ecojivan/screens/product.dart';
import 'package:ecojivan/screens/productdesc.dart';
import 'package:ecojivan/screens/psych.dart';
import 'package:ecojivan/screens/recipes.dart';
import 'package:ecojivan/screens/registertwo.dart';
import 'package:ecojivan/screens/registration.dart';
import 'package:ecojivan/screens/reports.dart';
import 'package:ecojivan/screens/settings.dart';
import 'package:ecojivan/screens/sliverappbar.dart';
import 'package:ecojivan/screens/splash.dart';
import 'package:ecojivan/screens/verification.dart';
import 'package:ecojivan/screens/workout.dart';
import 'package:ecojivan/screens/workoutdesc.dart';
import 'package:ecojivan/screens/workoutlist.dart';
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
        '/workoutlist': (context) => WorkoutList(),
        '/workoutdesc': (context) => WorkoutDescription(),
        '/cuisine': (context) => Cuisines(),
        '/indian': (context) => Indian(),
        '/healthy': (context) => HealthyRecipe(),
        '/productdesc': (context) => ProductDescription(),
        '/physio': (context) => PhysioList(),
        '/psych': (context) => PsychTherapy()
      },
    );
  }
}
