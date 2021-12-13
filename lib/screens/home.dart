import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: paddingall,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              child: ClipRect(
                child: Banner(
                  message: "20% off !!",
                  location: BannerLocation.topEnd,
                  color: PrimaryColor,
                  child: Container(
                    color: Colors.green[100],
                    height: 300,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images.jpeg'),
                          SizedBox(height: 10),
                          Text(
                            appname,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 40,
                                fontWeight: FontWeight.bold), 
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            slogan,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold), 
                          ), 
                        ],
                      ), 
                    ), 
                  ), 
                ), 
              ), 
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                consultancy,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: paddingall,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 4,
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0), //or 15.0
                            child: Container(
                                height: 50.0,
                                width: 80,
                                child: Image.asset(
                                  'assets/logo.png',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                              height: 50,
                              child: Padding(
                                padding: lefttop,
                                child: Text(consult1),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 4,
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0), //or 15.0
                            child: Container(
                                height: 50.0,
                                width: 80,
                                child: Image.asset(
                                  'assets/logo.png',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                              height: 50,
                              child: Padding(
                                padding: lefttop,
                                child: Text(consult2),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 4,
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                                height: 50.0,
                                width: 80,
                                child: Image.asset(
                                  'assets/logo.png',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                              height: 50,
                              child: Padding(
                                padding: lefttop,
                                child: Text(consult3),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                fitness,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: paddingall,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 4,
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0), //or 15.0
                            child: Container(
                                height: 50.0,
                                width: 80,
                                child: Image.asset(
                                  'assets/logo.png',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    '/diet', (route) => true);
                              },
                              child: Container(
                                  height: 50,
                                  width: 80,
                                  child: Padding(
                                    padding: lefttop,
                                    child: Text(
                                      diet,
                                      maxLines: 2,
                                    ),
                                  )))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 4,
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0), //or 15.0
                            child: Container(
                                height: 50.0,
                                width: 80,
                                child: Image.asset(
                                  'assets/logo.png',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                              height: 50,
                              width: 80,
                              child: Padding(
                                padding: lefttop,
                                child: Text(
                                  health,
                                  maxLines: 2,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    elevation: 4,
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Container(
                                height: 50.0,
                                width: 80,
                                child: Image.asset(
                                  'assets/logo.png',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                              height: 50,
                              width: 80,
                              child: Padding(
                                padding: lefttop,
                                child: Text(
                                  workout,
                                  maxLines: 2,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 150.0,
                width: 350.0,
                child: Carousel(
                  images: [
                    ExactAssetImage("assets/images.jpeg"),
                    ExactAssetImage(""),
                    ExactAssetImage("")
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
