import 'package:ecojivan/constraint.dart';
import 'package:ecojivan/views/components/MyDrawer.dart';
import 'package:ecojivan/views/pages/edit.dart';
import 'package:ecojivan/screens/previousconsult.dart';
import 'package:ecojivan/views/pages/registertwo.dart';
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
        drawer: const MyDrawer(),
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
            )),
        body: TabBarView(
          children: [PreviousConsultancy(), Subscribe(), EditProfile()],
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
