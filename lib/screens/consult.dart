import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';

class Consult extends StatelessWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double itemHeight = 5;
    final double itemWidth = 15;

    return Column(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Select your Concern',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Flexible(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (itemWidth / itemHeight),
            ),
            children: [
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), //or 15.0
                    child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: PrimaryColor,
                        child: Image.asset('assets/logo.png')),
                  ),
                  title: Text('Body Pain'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), //or 15.0
                    child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: PrimaryColor,
                        child: Image.asset('assets/logo.png')),
                  ),
                  title: Text('Vomiting'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), //or 15.0
                    child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: PrimaryColor,
                        child: Image.asset('assets/logo.png')),
                  ),
                  title: Text('a'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), //or 15.0
                    child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: PrimaryColor,
                        child: Image.asset('assets/logo.png')),
                  ),
                  title: Text(acne),
                ),
              ),
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), //or 15.0
                    child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: PrimaryColor,
                        child: Image.asset('assets/logo.png')),
                  ),
                  title: Text('Fever'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), //or 15.0
                    child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: PrimaryColor,
                        child: Image.asset('assets/logo.png')),
                  ),
                  title: Text('Sneezing'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), //or 15.0
                    child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: PrimaryColor,
                        child: Image.asset('assets/logo.png')),
                  ),
                  title: Text(runny),
                ),
              ),
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), //or 15.0
                    child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: PrimaryColor,
                        child: Image.asset('assets/logo.png')),
                  ),
                  title: Text('Headache'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), //or 15.0
                    child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: PrimaryColor,
                        child: Image.asset('assets/logo.png')),
                  ),
                  title: Text('Cough'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0), //or 15.0
                    child: Container(
                        height: 40.0,
                        width: 40.0,
                        color: PrimaryColor,
                        child: Image.asset('assets/logo.png')),
                  ),
                  title: Text('Loose Motion'),
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/doc', (route) => true);
            },
            child: Text('Choose Doctor'))
      ],
    );
  }
}
