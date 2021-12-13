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
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset('assets/logo.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: Text(create, style: bold),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(name, style: namestyle)),
                Padding(
                  padding: bottom,
                  child: TextField(
                    // decoration: InputDecoration(
                    //   border: OutlineInputBorder(),
                    // ),
                  ),
                ),
                // Align(alignment: Alignment.topLeft, child: Text(add)),
                // Padding(
                //   padding: paddingtb,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       Container(
                //           height: 30,
                //           width: 100,
                //           decoration: BoxDecoration(color: TertiaryColor),
                //           child: Text(add1)),
                //       Container(
                //           height: 30,
                //           width: 100,
                //           decoration: BoxDecoration(color: TertiaryColor),
                //           child: Text(add2)),
                //       Container(
                //           height: 30,
                //           width: 100,
                //           decoration: BoxDecoration(color: TertiaryColor),
                //           child: Text(add3))
                //     ],
                //   ),
                // ),

                
                Align(alignment: Alignment.topLeft, child: Text(gender)),
                Padding(
                  padding: paddingtb,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.female),
                          label: Text(female)),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.male),
                          label: Text(male)),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.transgender),
                          label: Text(trans)),
                    ],
                  ),
                ),

                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 5, right: 10),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          looking,
                          style: namestyle,
                        )),
                  ),

                MultiSelectChipGroup(
                    items: [health, diab, obese, hyper, pcos, stress],
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
                    ],
                  ),  
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5, right: 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil('/rthree', (route) => true);
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
