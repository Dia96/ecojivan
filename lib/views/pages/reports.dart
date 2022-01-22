import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';

class WeeklyReports extends StatefulWidget {
  
  @override
  _WeeklyReportsState createState() => _WeeklyReportsState();
}

class _WeeklyReportsState extends State<WeeklyReports> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: [

         Card(
           elevation: 3,
           child: ListTile(
             title: Text(week),
             subtitle: Text(weekfrom),
           ),
         ),

         
     

     ],
     ),





   );
  }
}