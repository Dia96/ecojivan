import 'dart:math';
import 'package:flappy_search_bar_ns/flappy_search_bar_ns.dart';
import 'package:flappy_search_bar_ns/scaled_tile.dart';
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
  final SearchBarController<Post> _searchBarController = SearchBarController();
  bool isReplay = false;

  Future<List<Post>> _getALlPosts(String? text) async {
    await Future.delayed(Duration(seconds: text!.length == 4 ? 10 : 1));
    if (isReplay) return [Post("Replaying !", "Replaying body")];
    if (text.length == 5) throw Error();
    if (text.length == 6) return [];
    List<Post> posts = [];

    var random = new Random();
    for (int i = 0; i < 10; i++) {
      posts.add(
        Post("$text $i", "body random number : ${random.nextInt(100)}"),
      );
    }
    return posts;
  }

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
                    onTap: () {},
                  ),
                ),
                Card(
                  elevation: 5,
                  color: backColor,
                  child: ListTile(
                    leading: Icon(Icons.work_outline, color: buttonColor),
                    title: Text(drawertitle10),
                    onTap: () {},
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
      body: SingleChildScrollView(
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
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/doc', (route) => true);
          },
          label: Text('Choose Doctor')),
    );
  }
}
