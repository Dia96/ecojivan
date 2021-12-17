import 'package:flutter/material.dart';

import '../constraint.dart';

class WorkoutList extends StatefulWidget {
  const WorkoutList({Key? key}) : super(key: key);

  @override
  _WorkoutListState createState() => _WorkoutListState();
}

class _WorkoutListState extends State<WorkoutList> {
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
        child: Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(exname, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/workoutone.gif')),
              ),
            ),
          ),
      
          GestureDetector(
            onTap: () {
               Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(lunges, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/lunges.gif')),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(squat, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/squat.gif')),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(exname, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/workoutone.gif')),
              ),
            ),
          ),
      
          GestureDetector(
            onTap: () {
               Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(lunges, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/lunges.gif')),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(squat, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/squat.gif')),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(exname, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/workoutone.gif')),
              ),
            ),
          ),
      
          GestureDetector(
            onTap: () {
               Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(lunges, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/lunges.gif')),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(squat, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/squat.gif')),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(exname, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/workoutone.gif')),
              ),
            ),
          ),
      
          GestureDetector(
            onTap: () {
               Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(lunges, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/lunges.gif')),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(squat, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/squat.gif')),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(exname, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/workoutone.gif')),
              ),
            ),
          ),
      
          GestureDetector(
            onTap: () {
               Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(lunges, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/lunges.gif')),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workoutdesc', (route) => true);
            },
            child: Card(
              color: TertiaryColor,
              child: Padding(
                padding: paddingall,
                child: ListTile(leading: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(squat, style: namestyle,),
                    Text('1*20')
                  ],
                ),
                 trailing: Image.asset('assets/squat.gif')),
              ),
            ),
          ),               
        ]),
      ),
    );
  }
}
