import 'package:ecojivan/constraint.dart';
import 'package:ecojivan/screens/edit.dart';
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
        appBar: AppBar(
          toolbarHeight: 100,
          actions: [
           Padding(
             padding: const EdgeInsets.only(right: 15),
             child: Icon(Icons.refresh),
           )
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.task)),
              Tab(icon: Icon(Icons.subscriptions_rounded)),
              Tab(icon: Icon(Icons.edit)),            
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
            Task(),
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
