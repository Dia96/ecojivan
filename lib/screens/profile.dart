import 'package:ecojivan/constraint.dart';
import 'package:ecojivan/screens/edit.dart';
import 'package:ecojivan/screens/previousconsult.dart';
import 'package:ecojivan/screens/registertwo.dart';
import 'package:ecojivan/screens/subscription.dart';
import 'package:ecojivan/screens/task.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
        // appBar: AppBar(
        //   title: Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           name,
        //         ),
        //         Text(location),
        //       ]),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.only(right: 20),
        //       child: Icon(Icons.wallet_travel),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.only(right: 20),
        //       child: Icon(Icons.notifications),
        //     ),
        //   ],
        //   flexibleSpace: Container(
        //     decoration: gradientdecoration,
        //   ),
        //   //backgroundColor: Colors.transparent,
        // ),


        appBar: AppBar(
          flexibleSpace: Container(
            decoration: gradientdecoration,
          ),
          toolbarHeight: 100,
          actions: [
           Padding(
             padding: const EdgeInsets.only(right: 15),
             child: Icon(Icons.refresh),
           )
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: history),
              Tab(text: subscribe),
              Tab(text: edit),            
            ],
          ),
          title: Center(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/logo.png'),
                ),
                SizedBox(height: 5),
                Text(name)
              ],
            ),
          )
        ),
        body: TabBarView(
          children: [
            PreviousConsultancy(),
            Subscribe(),
            EditProfile()
          ],
        ),
      ),
    );

    // return Center(
    //   child: Padding(
    //     padding: const EdgeInsets.only(top: 20),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         ClipRRect(
    //           borderRadius: BorderRadius.circular(40.0), //or 15.0
    //           child: Container(
    //               height: 80.0,
    //               width: 80.0,
    //               color: Colors.brown,
    //               child: Image.asset(
    //                 'assets/logo.png',
    //                 fit: BoxFit.cover,
    //               )),
    //         ),
    //         Text(
    //           name,
    //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //         ),
    //         Card(
    //           color: Colors.transparent,
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.spaceAround,
    //             children: [
    //               Padding(
    //                 padding: const EdgeInsets.only(top: 10),
    //                 child: Card(
    //                   child: ListTile(
    //                     leading: Icon(Icons.account_box),
    //                     title: Text(edit),
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(top: 10),
    //                 child: Card(
    //                   child: ListTile(
    //                     leading: Icon(Icons.account_box),
    //                     title: Text(edit),
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(top: 10),
    //                 child: Card(
    //                   child: ListTile(
    //                     leading: Icon(Icons.account_box),
    //                     title: Text(edit),
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(top: 10),
    //                 child: Card(
    //                   child: ListTile(
    //                     leading: Icon(Icons.account_box),
    //                     title: Text(edit),
    //                   ),
    //                 ),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.only(top: 10),
    //                 child: Card(
    //                   child: ListTile(
    //                     leading: Icon(Icons.account_box),
    //                     title: Text(edit),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
