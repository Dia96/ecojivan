import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';

class Doctors extends StatefulWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  _DoctorsState createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  Card buildCard() {
    var cardImage = AssetImage('assets/logo.png');
    return Card(
        elevation: 10,
        child: Column(
          children: [
            // ListTile(
            //   title: Text(heading),
            //   subtitle: Text(subheading),
            //   trailing: Icon(Icons.favorite_outline),
            // ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0), //or 15.0
                          child: Container(
                              height: 100.0,
                              width: 90.0,
                              color: Colors.brown,
                              child: Image.asset(
                                'assets/logo.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Card(
                        
                        elevation: 10,
                        child: Container(
                          color: Colors.brown,
                          height: 30,
                          width: 90,
                          child: Center(child: Text(exp,
                          style: TextStyle(color: Colors.white),
                          ))),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    children: [
                      Container(                     
                        alignment: Alignment.centerLeft,
                        child: Text(hospital, style: TextStyle(
                          fontSize: 20
                        ),),
                      ),
                      Container(                     
                        alignment: Alignment.centerLeft,
                        child: Text(location),
                      ),
                     Container(                     
                        alignment: Alignment.centerLeft,
                        child: Text(docname,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        )
                        ),
                        
                      ),
                      Container(
                        //padding: EdgeInsets.all(16.0),
                        alignment: Alignment.centerLeft,
                        child: Text(designation),
                      ),
                      Container(
                        //padding: EdgeInsets.all(16.0),
                        alignment: Alignment.centerLeft,
                        child: Text(price),
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: Text(consult))
                    ],
                  ),
                ),
              ],
            ),       
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      child:  Text(more),
                      onPressed: () {},
                    ),
                  ),
                )             
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black45),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                ],
              )),
        ));
  }
}
