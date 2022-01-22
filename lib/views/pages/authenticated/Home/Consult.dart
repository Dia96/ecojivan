import 'dart:math';
import 'package:ecojivan/views/components/MyDrawer.dart';
import 'package:flutter/material.dart';
import 'package:multiselectchipgroup/multiselectchipgroup.dart';

import '../../../../constraint.dart';

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
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            name,
          ),
          Text(location),
        ]),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 20),
            child: const Icon(Icons.wallet_travel),
          ),
          Container(
            padding: const EdgeInsets.only(right: 20),
            child: const Icon(Icons.notifications),
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
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Most selected Issues',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              MultiSelectChipGroup(
                items: [fever, gas, motion, blocked, sneeze, acne, rash, period, spots, pregnancy, darkcircle, vomit, headache, constipation, runny, abdominal, hairfall, cough],
                onSelectionChanged: (values) {
                  print(values);
                },
                horizontalChipSpacing: 10,
                selectedColor: Colors.green,
                disabledColor: Colors.white,
                leftCommonIcon: Icons.perm_identity,
                leftIcons: const [
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
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              MultiSelectChipGroup(
                items: [period, pregnancy, discharge, excessbleed, bleed, pregplan, thyroid, others],
                onSelectionChanged: (values) {
                  print(values);
                },
                horizontalChipSpacing: 10,
                selectedColor: Colors.green,
                disabledColor: Colors.white,
                leftCommonIcon: Icons.perm_identity,
                leftIcons: const [
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
            Navigator.of(context).pushNamedAndRemoveUntil('/doc', (route) => true);
          },
          label: const Text('Choose Doctor')),
    );
  }
}
