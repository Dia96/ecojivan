import 'dart:math';
import 'package:flutter/material.dart';
import 'package:multiselectchipgroup/multiselectchipgroup.dart';

import '../constraint.dart';

class Post {
  final String title;
  final String body;

  Post(this.title, this.body);
}

class Consult extends StatefulWidget {
  @override
  _ConsultState createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    leading: Icon(
                      Icons.rate_review_rounded,
                      color: buttonColor,
                    ),
                    title: Text(drawertitle1),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil('/consult', (route) => true);
                    },
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(
                      Icons.rate_review_rounded,
                      color: buttonColor,
                    ),
                    title: Text(drawertitle2),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil('/product', (route) => true);
                    },
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(
                      Icons.production_quantity_limits,
                      color: buttonColor,
                    ),
                    title: Text(drawertitle3),
                    onTap: () {
                     
                    },
                  ),
                ),

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
                    leading: Icon(
                      Icons.report,
                      color: buttonColor,
                    ),
                    title: Text(drawertitle8),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil('/reports', (route) => true);
                    },
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.health_and_safety, color: buttonColor),
                    title: Text(drawertitle9),
                    onTap: () {
                       Navigator.of(context)
                          .pushNamedAndRemoveUntil('/diet', (route) => true);
                    },
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.work_outline, color: buttonColor),
                    title: Text(drawertitle10),
                    onTap: () {
                       Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workout', (route) => true);
                    },
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.lock_clock, color: buttonColor),
                    title: Text(drawertitle11),
                    onTap: () {},
                  ),
                ),
                
                Padding(
                  padding: drawertitle,
                  child: Text(about, style: bold),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(
                      Icons.details,
                      color: buttonColor,
                    ),
                    title: Text(drawertitle4),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(
                      Icons.privacy_tip,
                      color: buttonColor,
                    ),
                    title: Text(drawertitle5),
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(
                      Icons.rule,
                      color: buttonColor,
                    ),
                    title: Text(drawertitle6),
                    onTap: () {},
                  ),
                ),
              
                Padding(
                  padding: drawertitle,
                  child: Text(
                    drawertitle12,
                    style: bold,
                  ),
                ),
                Card(
                  elevation: 5,
                  color: TertiaryColor,
                  child: ListTile(
                    leading: Icon(Icons.settings, color: buttonColor),
                    title: Text(settings),
                    onTap: () {
                       Navigator.of(context)
                            .pushNamedAndRemoveUntil('/settings', (route) => true);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                ),
                Text(location),
              ]),
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
      body: Padding(
        padding: paddingall,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Most selected Issues',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              MultiSelectChipGroup(
                items: [
                  fever,
                  gas,
                  motion,
                  blocked,
                  sneeze,
                  acne,
                  rash,
                  period,
                  spots,
                  pregnancy,
                  darkcircle,
                  vomit,
                  headache,
                  constipation,
                  runny,
                  abdominal,
                  hairfall,
                  cough
                ],
                onSelectionChanged: (values) {
                  print(values);
                },
                horizontalChipSpacing: 10,
                selectedColor: Colors.green,
                disabledColor: Colors.white,
                leftCommonIcon: Icons.perm_identity,
                leftIcons: [
                  Icons.alarm,
                  Icons.ac_unit,
                  Icons.accessibility,
                  Icons.account_balance,
                  Icons.perm_identity,
                  Icons.perm_identity,
                  Icons.alarm,
                  Icons.ac_unit,
                  Icons.accessibility,
                  Icons.account_balance,
                  Icons.perm_identity,
                  Icons.feed,
                  Icons.alarm,
                  Icons.ac_unit,
                  Icons.accessibility,
                  Icons.account_balance,
                  Icons.perm_identity,
                  Icons.perm_identity,
                ],
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  women,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              MultiSelectChipGroup(
                items: [
                  period,
                  pregnancy,
                  discharge,
                  excessbleed,
                  bleed,
                  pregplan,
                  thyroid,
                  others
                ],
                onSelectionChanged: (values) {
                  print(values);
                },
                horizontalChipSpacing: 10,
                selectedColor: Colors.green,
                disabledColor: Colors.white,
                leftCommonIcon: Icons.perm_identity,
                leftIcons: [
                  Icons.alarm,
                  Icons.ac_unit,
                  Icons.accessibility,
                  Icons.account_balance,
                  Icons.perm_identity,
                  Icons.perm_identity,
                  Icons.alarm,
                  Icons.ac_unit,
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/doc', (route) => true);
          },
          label: Text('Choose Doctor')),
    );
  }
}
