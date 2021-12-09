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
        // drawer: Drawer(

        // ),

        drawer: Drawer(         
          child: Container(
             decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.grey, Colors.brown],
      )),
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("User Name"),
                  accountEmail: Text("user@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/logo.png')),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  // otherAccountsPictures: [
                  //   CircleAvatar(
                  //       backgroundColor: Colors.white,
                  //       backgroundImage: AssetImage("assets/logo.png")),
                  //   CircleAvatar(
                  //       backgroundColor: Colors.white,
                  //       backgroundImage: AssetImage("assets/logo.png")),
                  // ],
                ),
                Text("Services",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.brown[200],
                  child: ListTile(
                    leading: Icon(Icons.rate_review_rounded),
                    title: Text("Consult Now"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.brown[200],
                  child: ListTile(
                    leading: Icon(Icons.rate_review_rounded),
                    title: Text("Order products"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.brown[200],
                  child: ListTile(
                    leading: Icon(Icons.production_quantity_limits),
                    title: Text("Buy Subscriptions"),
                    onTap: () {},
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.brown,
                ),
                Text("About",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),               
                ),
                Card(
                  elevation: 10,
                  color: Colors.brown[200],
                  child: ListTile(
                    leading: Icon(Icons.details),
                    title: Text("About us"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.brown[200],
                  child: ListTile(
                    leading: Icon(Icons.privacy_tip),
                    title: Text("Privacy Policy"),
                    onTap: () {},
                  ),
                ),
                 Card(
                  elevation: 10,
                  color: Colors.brown[200],
                  child: ListTile(
                    leading: Icon(Icons.rule),
                    title: Text("Terms and Conditions"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.brown[200],
                  child: ListTile(
                    leading: Icon(Icons.map),
                    title: Text("Our Sitemap"),
                    onTap: () {},
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.brown,
                ),
                Text("Tracker",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.brown[200],
                  child: ListTile(
                    leading: Icon(Icons.report),
                    title: Text("Weekly Reports"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.brown[200],
                  child: ListTile(
                    leading: Icon(Icons.health_and_safety),
                    title: Text("Diet Plan"),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.brown[200],
                  child: ListTile(
                    leading: Icon(Icons.work_outline),
                    title: Text("Workout Plan"),
                    onTap: () {},
                  ),
                ),
                 Card(
                  elevation: 10,
                  color: Colors.brown[200],
                  child: ListTile(
                    leading: Icon(Icons.lock_clock),
                    title: Text("Reminders"),
                    onTap: () {},
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.brown,
                ),

                
                Text("Settings",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
                Card(
                  elevation: 10,
                  color: Colors.brown[200],
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
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
              title: new Text('Explore', style: TextStyle(color: Colors.white)),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.upgrade, color: Colors.white),
              title: new Text('Upgrade', style: TextStyle(color: Colors.white)),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.rate_review_rounded, color: Colors.white),
              title: new Text('Consult', style: TextStyle(color: Colors.white)),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.person, color: Colors.white),
              title: new Text('Profile', style: TextStyle(color: Colors.white)),
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
