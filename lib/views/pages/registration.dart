import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';
import 'package:multiselectchipgroup/multiselectchipgroup.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: paddingall,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: top50,
                  child: Image.asset('assets/logo.png'),
                ),
                Padding(
                  padding: regpadding,
                  child: Text(create, style: bold),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(name, style: namestyle)),
                Padding(
                  padding: bottom,
                  child: TextField(),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(email, style: namestyle)),
                Padding(
                  padding: bottom,
                  child: TextField(),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      gender,
                      style: namestyle,
                    )),
                Padding(
                  padding: paddingtb,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.female),
                          label: Text(
                            female,
                            style: genderstyle,
                          )),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.male),
                          label: Text(
                            male,
                            style: genderstyle,
                          )),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.transgender),
                          label: Text(
                            trans,
                            style: genderstyle,
                          )),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [                         
                            Text(
                              '$height (in cm)',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),                      
                          Container(
                            height: 50,
                            width: 100,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [                         
                            Text(
                              '$weigh (in kg)',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),                     
                          Container(
                            height: 50,
                            width: 100,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [                         
                            Text(
                              age,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),                      
                          Container(
                            height: 50,
                            width: 100,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Flexible(
                //   child: Row(
                //     children: [
                //       TextField(),
                //       TextField(),
                //     ],
                //   ),
                // ),

                // Padding(
                //   padding: const EdgeInsets.only(top: 10, bottom: 5, right: 10),
                //   child: Align(
                //       alignment: Alignment.topLeft,
                //       child: Text(
                //         looking,
                //         style: namestyle,
                //       )),
                // ),
                // MultiSelectChipGroup(
                //   labelFontSize: 16,
                //   items: [health, diab, obese, hyper, pcos, stress],
                //   onSelectionChanged: (values) {
                //     print(values);
                //   },
                //   horizontalChipSpacing: 10,
                //   selectedColor: Colors.green,
                //   disabledColor: Colors.white,
                //   leftCommonIcon: Icons.perm_identity,
                //   leftIcons: [
                //     Icons.alarm,
                //     Icons.ac_unit,
                //     Icons.accessibility,
                //     Icons.account_balance,
                //     Icons.perm_identity,
                //     Icons.perm_identity,
                //   ],
                // ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Blood Group',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),

                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Text('A+'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Text('A-'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Text('B+'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Text('B-'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Text('AB+'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Text('A'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Text('AB-'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Text('O+'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Text('O-'),
                        ),
                      ),
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
                      label: Text(next),
                      icon: Icon(Icons.arrow_right),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
