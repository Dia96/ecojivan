import 'package:ecojivan/views/pages/authenticated/HomeIndex.dart';
import 'package:ecojivan/views/pages/authenticated/Home/Consult.dart';
import 'package:ecojivan/views/pages/cuisines.dart';
import 'package:ecojivan/views/pages/diet.dart';
import 'package:ecojivan/views/pages/doctors.dart';
import 'package:ecojivan/views/pages/edit.dart';
import 'package:ecojivan/views/pages/healthyrecipe.dart';
import 'package:ecojivan/views/pages/indian.dart';
import 'package:ecojivan/views/pages/payment.dart';
import 'package:ecojivan/views/pages/physiolist.dart';
import 'package:ecojivan/views/pages/authenticated/Home/Products.dart';
import 'package:ecojivan/views/pages/productdesc.dart';
import 'package:ecojivan/views/pages/psych.dart';
import 'package:ecojivan/views/pages/registertwo.dart';
import 'package:ecojivan/views/pages/registration.dart';
import 'package:ecojivan/views/pages/reports.dart';
import 'package:ecojivan/views/pages/settings.dart';
import 'package:ecojivan/views/pages/sliverappbar.dart';
import 'package:ecojivan/views/pages/guest/SplashScreen.dart';
import 'package:ecojivan/views/pages/guest/LoginWithPhone.dart';
import 'package:ecojivan/views/pages/workout.dart';
import 'package:ecojivan/views/pages/workoutdesc.dart';
import 'package:ecojivan/views/pages/workoutlist.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: const SplashScreen(),
      // home: Registration(),
      // initialRoute: '/',
      // routes: <String, WidgetBuilder>{
      //   '/': (context) => const SplashScreen(),
      //   '/home': (context) => HomeIndex(),
      //   '/verification': (context) => const LoginWithPhone(),
      //   '/register': (context) => Registration(),
      //   '/rtwo': (context) => RegistrationTwo(),
      //   '/payments': (context) => const Payment(),
      //   '/settings': (context) => const Settings(),
      //   '/doc': (context) => const Doctors(),
      //   '/edit': (context) => const EditProfile(),
      //   '/diet': (context) => const Diet(),
      //   '/sliver': (context) => MainCollapsingToolbar(),
      //   '/consult': (context) => Consult(),
      //   '/product': (context) => const Products(),
      //   '/reports': (context) => WeeklyReports(),
      //   '/workout': (context) => const Workout(),
      //   '/workoutlist': (context) => const WorkoutList(),
      //   '/workoutdesc': (context) => const WorkoutDescription(),
      //   '/cuisine': (context) => const Cuisines(),
      //   '/indian': (context) => const Indian(),
      //   '/healthy': (context) => const HealthyRecipe(),
      //   '/productdesc': (context) => const ProductDescription(),
      //   '/physio': (context) => const PhysioList(),
      //   '/psych': (context) => const PsychTherapy(),
      // },
    );
  }
}
