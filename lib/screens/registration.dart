import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.grey, Colors.brown],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            // child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset('assets/logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: Text(create,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      name,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Align(alignment: Alignment.topLeft, child: Text('Address')),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("House No*")),
                      Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("Street*")),
                      Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("Pincode*"))
                    ],
                  ),
                ),
                Align(alignment: Alignment.topLeft, child: Text('Gender')),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.female),
                          label: Text('Female')),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.male),
                          label: Text('Male')),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.transgender),
                          label: Text('Others')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5, right: 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil('/rtwo', (route) => true);
                      },
                      label: Text("Next"),
                      icon: Icon(Icons.arrow_right),
                    ),
                    // child: ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.of(context).pushNamedAndRemoveUntil(
                    //           '/rtwo', (route) => true);
                    //     },
                    //     child: Text("Next")),
                  ),
                ),
              ],
            ),
            // ),
          ),
        ),
      ),
    );
  }
}
