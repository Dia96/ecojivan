import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';

class Doctors extends StatefulWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  _DoctorsState createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  void _show(BuildContext ctx) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        elevation: 10,
        backgroundColor: Colors.white,
        context: ctx,
        builder: (ctx) => Container(
              height: 200,
              child: Padding(
                padding: paddingall,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        selectpay,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil('/pay', (route) => true);
                      },
                      child: ListTile(
                        leading: Icon(Icons.credit_card),
                        title: Text('Credit Card'),
                        subtitle: Text('This plan will auto-renew post expiry'),
                        trailing: Text(price),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.credit_card),
                      title: Text('Debit Card'),
                      trailing: Text(price),
                    ),
                  ],
                ),
              ),
            ));
  }

  Card buildCard() {
    var cardImage = AssetImage('assets/logo.png');
    return Card(
        elevation: 10,
        child: Column(
          children: [
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
                              color: PrimaryColor,
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
                            color: buttonColor,
                            height: 30,
                            width: 90,
                            child: Center(
                                child: Text(
                              exp,
                              style: TextStyle(color: TertiaryColor),
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
                        child: Text(
                          hospital,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(location),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(docname, style: bold),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(designation),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(price),
                      ),
                      ElevatedButton(
                          onPressed: () => _show(context), child: Text(consult))
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
                  child: Text(more),
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
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: gradientdecoration,
          ),
        ),
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
