import 'package:ecojivan/screens/consult.dart';
import 'package:ecojivan/screens/home.dart';
import 'package:ecojivan/screens/profile.dart';
import 'package:ecojivan/screens/registration.dart';
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
   Upgrade(),
   Consult(),
   Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.grey, Colors.brown],
      )),
      child: new Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawer(),
          appBar: AppBar(
            title: Text('Location'),
            actions: [          
               Padding(
                 padding: const EdgeInsets.only(right: 20),
                 child: Icon(Icons.wallet_travel),
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 20),
                 child: Icon(Icons.notifications),
               ),
            ],        
            backgroundColor: Colors.transparent,
          ),
        body: pages[i],    
        bottomNavigationBar: new BottomNavigationBar(
          backgroundColor: Colors.transparent,
          items: [
            new BottomNavigationBarItem(            
              icon: new Icon(Icons.home, color: Colors.white),
              title: new Text('Explore',
              style: TextStyle(
                color: Colors.white
              )
              ),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.upgrade, color: Colors.white),
              title: new Text('Upgrade',
              style: TextStyle(
                color: Colors.white
              )
              ),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.rate_review_rounded, color: Colors.white),
              title: new Text('Consult', 
              style: TextStyle(
                color: Colors.white
              )
              ),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.person, color: Colors.white),
              title: new Text('Profile',
              style: TextStyle(
                color: Colors.white
              )
              ),
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
    );
  }
}







