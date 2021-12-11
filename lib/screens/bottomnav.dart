import 'package:ecojivan/constraint.dart';
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
      decoration: decoration,
      child: new Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(color: backColor),
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(username),
                  accountEmail: Text(useremail),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/logo.png')),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                 padding: drawertitle,
                  child: Text("Services", style: bold),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.rate_review_rounded, color: buttonColor,),
                    title: Text("Consult Now"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.rate_review_rounded, color: buttonColor,),
                    title: Text("Order products"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.production_quantity_limits, color: buttonColor,),
                    title: Text("Buy Subscriptions"),
                    onTap: () {},
                  ),
                ),
                // Divider(
                //   thickness: 1,
                //   color: PrimaryColor,
                // ),
                Padding(
                  padding: drawertitle,
                  child: Text(about, style: bold),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.details, color: buttonColor,),
                    title: Text(aboutus),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.privacy_tip, color: buttonColor,),
                    title: Text("Privacy Policy"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.rule, color: buttonColor,),
                    title: Text("Terms and Conditions"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.map, color: buttonColor,),
                    title: Text("Our Sitemap"),
                    onTap: () {},
                  ),
                ),
                // Divider(
                //   thickness: 1,
                //   color: PrimaryColor,
                // ),
                Padding(
                 padding: drawertitle,
                  child: Text(
                    "Tracker",
                    style: bold,
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.report, color: buttonColor,),
                    title: Text("Weekly Reports"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.health_and_safety),
                    title: Text("Diet Plan"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.work_outline),
                    title: Text("Workout Plan"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.lock_clock),
                    title: Text("Reminders"),
                    onTap: () {},
                  ),
                ),
                // Divider(
                //   thickness: 1,
                //   color: PrimaryColor,
                // ),
                Padding(
                  padding: drawertitle,
                child: Text(
                  "Settings",
                  style: bold,
                ),),
                Card(
                  elevation: 5,
                  color: TertiaryColor,
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(settings),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          
          title: Text(location),
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
          flexibleSpace: Container(
            decoration: gradientdecoration,
          ),
          //backgroundColor: Colors.transparent,
        ),
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
                icon: new Icon(Icons.production_quantity_limits, color: TertiaryColor),
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
