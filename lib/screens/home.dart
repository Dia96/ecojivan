import 'package:ecojivan/screens/profile.dart';
import 'package:ecojivan/screens/registration.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  int i = 0;
  var pages = [
   Registration(),
   Profile(),
   Registration(),
   Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: pages[i],    
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Explore'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.upgrade),
            title: new Text('Upgrade'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.rate_review_rounded),
            title: new Text('Consult'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('Profile'),
          ),
        ],
        currentIndex: i,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            i = index;
          });
        },
      ),
    );
  }
}
