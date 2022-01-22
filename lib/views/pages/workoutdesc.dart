import 'package:flutter/material.dart';

import '../../constraint.dart';

class WorkoutDescription extends StatefulWidget {
  const WorkoutDescription({ Key? key }) : super(key: key);

  @override
  _WorkoutDescriptionState createState() => _WorkoutDescriptionState();
}

class _WorkoutDescriptionState extends State<WorkoutDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Workout Plan'),
        flexibleSpace: Container(
          decoration: gradientdecoration,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: paddingall,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/workoutone.gif'),
              Text(exname, style: namestyle,),
              Text(dummy),
            ],
          ),
        ),
      ),
    );
  }
}