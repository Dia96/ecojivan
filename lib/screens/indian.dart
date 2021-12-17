import 'package:flutter/material.dart';

import '../constraint.dart';

class Indian extends StatefulWidget {
  const Indian({Key? key}) : super(key: key);

  @override
  _IndianState createState() => _IndianState();
}

class _IndianState extends State<Indian> {
  @override
  Widget build(BuildContext context) {
    final double itemHeight = 15;
    final double itemWidth = 15;
    return Scaffold(
      appBar: AppBar(
        title: Text('Indian Cuisine'),
        flexibleSpace: Container(
          decoration: gradientdecoration,
        ),
      ),
      body: Padding(
        padding: paddingall,
        child: Column(
          children: [
            Flexible(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (itemWidth / itemHeight),
                ),
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil('/healthy', (route) => true);
                    },
                    child: Padding(
                      padding: paddingall,
                      child: Container(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Container(
                                  color: Colors.brown,
                                  child: Image.asset(
                                    'assets/diet.jpeg',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Text(
                              cuisine1,
                              style: namestyle,
                            ),
                            Text(
                              'Total prep time: 30 mins',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: paddingall,
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                                color: Colors.brown,
                                child: Image.asset(
                                  'assets/diet.jpeg',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            cuisine1,
                            style: namestyle,
                          ),
                          Text(
                            'Total prep time: 30 mins',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: paddingall,
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                                color: Colors.brown,
                                child: Image.asset(
                                  'assets/diet.jpeg',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            cuisine1,
                            style: namestyle,
                          ),
                          Text(
                            'Total prep time: 30 mins',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: paddingall,
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                                color: Colors.brown,
                                child: Image.asset(
                                  'assets/diet.jpeg',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            cuisine1,
                            style: namestyle,
                          ),
                          Text(
                            'Total prep time: 30 mins',
                          ),
                        ],
                      ),
                    ),
                  ),
                   Padding(
                    padding: paddingall,
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                                color: Colors.brown,
                                child: Image.asset(
                                  'assets/diet.jpeg',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            cuisine1,
                            style: namestyle,
                          ),
                          Text(
                            'Total prep time: 30 mins',
                          ),
                        ],
                      ),
                    ),
                  ),
                   Padding(
                    padding: paddingall,
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                                color: Colors.brown,
                                child: Image.asset(
                                  'assets/diet.jpeg',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            cuisine1,
                            style: namestyle,
                          ),
                          Text(
                            'Total prep time: 30 mins',
                          ),
                        ],
                      ),
                    ),
                  ),
                   Padding(
                    padding: paddingall,
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                                color: Colors.brown,
                                child: Image.asset(
                                  'assets/diet.jpeg',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            cuisine1,
                            style: namestyle,
                          ),
                          Text(
                            'Total prep time: 30 mins',
                          ),
                        ],
                      ),
                    ),
                  ),
                   Padding(
                    padding: paddingall,
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                                color: Colors.brown,
                                child: Image.asset(
                                  'assets/diet.jpeg',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            cuisine1,
                            style: namestyle,
                          ),
                          Text(
                            'Total prep time: 30 mins',
                          ),
                        ],
                      ),
                    ),
                  ),
                   Padding(
                    padding: paddingall,
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                                color: Colors.brown,
                                child: Image.asset(
                                  'assets/diet.jpeg',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            cuisine1,
                            style: namestyle,
                          ),
                          Text(
                            'Total prep time: 30 mins',
                          ),
                        ],
                      ),
                    ),
                  ),
                   Padding(
                    padding: paddingall,
                    child: Container(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Container(
                                color: Colors.brown,
                                child: Image.asset(
                                  'assets/diet.jpeg',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Text(
                            cuisine1,
                            style: namestyle,
                          ),
                          Text(
                            'Total prep time: 30 mins',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
