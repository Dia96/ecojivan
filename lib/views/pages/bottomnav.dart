import 'package:ecojivan/constraint.dart';
import 'package:ecojivan/views/pages/consult.dart';
import 'package:ecojivan/screens/home.dart';
import 'package:ecojivan/views/pages/product.dart';
import 'package:ecojivan/screens/profile.dart';
import 'package:ecojivan/views/pages/registration.dart';
import 'package:ecojivan/screens/upgrade.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => new _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int i = 0;
  var pages = [
    Home(),
    Product(),
    Consult(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: new Scaffold(
        backgroundColor: Colors.transparent,       
        body: pages[i],
        bottomNavigationBar: Container(
          decoration: gradientdecoration,
          child: new BottomNavigationBar(
            backgroundColor: Colors.transparent,
            items: [
              new BottomNavigationBarItem(
                icon: new Icon(Icons.home, color: TertiaryColor),
                title: new Text(bottom1, style: bottomstyle),
              ),
              new BottomNavigationBarItem(
                icon: new Icon(Icons.production_quantity_limits,
                    color: TertiaryColor),
                title: new Text(bottom2, style: bottomstyle),
              ),
              new BottomNavigationBarItem(
                icon: new Icon(Icons.rate_review_rounded, color: TertiaryColor),
                title: new Text(bottom3, style: bottomstyle),
              ),
              new BottomNavigationBarItem(
                icon: new Icon(Icons.person, color: TertiaryColor),
                title: new Text(bottom4, style: bottomstyle),
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
        ),
      ),
    );
  }
}
