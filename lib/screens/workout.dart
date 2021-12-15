import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../constraint.dart';

class Workout extends StatefulWidget {
  const Workout({Key? key}) : super(key: key);

  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Plan'),

        flexibleSpace: Container(
          decoration: gradientdecoration,
        ),
        //backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: ClipRect(
                child: Container(
                  color: Colors.green[100],
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/workout.jpeg'),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: Text('Day 1'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 2'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 3'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 4'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 5'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 6'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 7'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 8'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 9'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 10'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 11'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 12'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 13'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 14'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 15'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 16'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 17'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 18'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 19'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 20'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 21'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 22'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 23'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 24'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 25'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 26'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 27'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 28'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 29'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
            Card(
              child: ListTile(
                leading: Text('Day 30'),
                trailing: CircularPercentIndicator(
                  radius: 40.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center: new Text("50%"),
                  progressColor: buttonColor,
                ),
              ),             
            ),
          ],
        ),
      ),
    );
  }
}
