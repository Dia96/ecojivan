import 'package:flutter/material.dart';

import '../constraint.dart';

class Cuisines extends StatefulWidget {
  const Cuisines({Key? key}) : super(key: key);

  @override
  _CuisinesState createState() => _CuisinesState();
}

class _CuisinesState extends State<Cuisines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Recipes'),
        flexibleSpace: Container(
          decoration: gradientdecoration,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: paddingall,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  ingredients,
                  style: namestyle,
                ),
              ),
              SizedBox(
                height: 150.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => GestureDetector(
                    onTap: () {
                         Navigator.of(context)
                          .pushNamedAndRemoveUntil('/indian', (route) => true);
                      },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/diet.jpeg',
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(cuisine, style: cuisinestyle)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  cuisine,
                  style: namestyle,
                ),
              ),
              SizedBox(
                height: 150.0,
                child: ListView(
                  children: [
                    GestureDetector(
                      onTap: () {
                         Navigator.of(context)
                          .pushNamedAndRemoveUntil('/indian', (route) => true);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  'assets/diet.jpeg',
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(cuisine1, style: cuisinestyle)
                          ],
                        ),
                      ),
                    ),

                       GestureDetector(
                      onTap: () {
                         Navigator.of(context)
                          .pushNamedAndRemoveUntil('/indian', (route) => true);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  'assets/diet.jpeg',
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(cuisine1, style: cuisinestyle)
                          ],
                        ),
                      ),
                    ),
                       GestureDetector(
                      onTap: () {
                         Navigator.of(context)
                          .pushNamedAndRemoveUntil('/indian', (route) => true);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  'assets/diet.jpeg',
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(cuisine1, style: cuisinestyle)
                          ],
                        ),
                      ),
                    ),

                       GestureDetector(
                      onTap: () {
                         Navigator.of(context)
                          .pushNamedAndRemoveUntil('/indian', (route) => true);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  'assets/diet.jpeg',
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(cuisine1, style: cuisinestyle)
                          ],
                        ),
                      ),
                    ),

                       GestureDetector(
                      onTap: () {
                         Navigator.of(context)
                          .pushNamedAndRemoveUntil('/indian', (route) => true);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  'assets/diet.jpeg',
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(cuisine1, style: cuisinestyle)
                          ],
                        ),
                      ),
                    ),
                       GestureDetector(
                      onTap: () {
                         Navigator.of(context)
                          .pushNamedAndRemoveUntil('/indian', (route) => true);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                  'assets/diet.jpeg',
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text(cuisine1, style: cuisinestyle)
                          ],
                        ),
                      ),
                    ),              
                  ],
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),

              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  meal,
                  style: namestyle,
                ),
              ),
              SizedBox(
                height: 150.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => GestureDetector(
                    onTap: () {
                         Navigator.of(context)
                          .pushNamedAndRemoveUntil('/indian', (route) => true);
                      },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/diet.jpeg',
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(cuisine, style: cuisinestyle)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  course,
                  style: namestyle,
                ),
              ),
              SizedBox(
                height: 150.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => GestureDetector(
                    onTap: () {
                         Navigator.of(context)
                          .pushNamedAndRemoveUntil('/indian', (route) => true);
                      },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/diet.jpeg',
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(cuisine, style: cuisinestyle)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
