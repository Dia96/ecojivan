import 'package:ecojivan/constraint.dart';
import 'package:ecojivan/views/pages/authenticated/Home/Consult.dart';
import 'package:ecojivan/views/pages/authenticated/Home/Explore.dart';
import 'package:ecojivan/views/pages/authenticated/Home/Products.dart';
import 'package:ecojivan/views/pages/authenticated/Home/Profile.dart';
import 'package:ecojivan/views/pages/registration.dart';
import 'package:ecojivan/screens/upgrade.dart';
import 'package:flutter/material.dart';

class HomeIndex extends StatefulWidget {
  const HomeIndex({Key? key}) : super(key: key);

  @override
  _HomeIndexState createState() => _HomeIndexState();
}

class _HomeIndexState extends State<HomeIndex> {
  int i = 0;
  var pages = [
    Explore(),
    Products(),
    Consult(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: pages[i],
        bottomNavigationBar: Container(
          decoration: gradientdecoration,
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home, color: TertiaryColor),
                title: Text(bottom1, style: bottomstyle),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.production_quantity_limits, color: TertiaryColor),
                title: Text(bottom2, style: bottomstyle),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.rate_review_rounded, color: TertiaryColor),
                title: Text(bottom3, style: bottomstyle),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.person, color: TertiaryColor),
                title: Text(bottom4, style: bottomstyle),
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
