import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';
import 'package:multiselectchipgroup/multiselectchipgroup.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double itemHeight = 22;
    final double itemWidth = 15;

    return Scaffold(
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(color: backColor),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(username),
                accountEmail: Text(useremail),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/logo.png')),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: drawertitle,
                child: Text("Services", style: bold),
              ),
              Card(
                elevation: 5,
                color: backColor,
                child: ListTile(
                  leading: Icon(
                    Icons.rate_review_rounded,
                    color: buttonColor,
                  ),
                  title: Text(drawertitle1),
                  onTap: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/consult', (route) => true);
                  },
                ),
              ),
              Card(
                elevation: 5,
                color: backColor,
                child: ListTile(
                  leading: Icon(
                    Icons.rate_review_rounded,
                    color: buttonColor,
                  ),
                  title: Text(drawertitle2),
                  onTap: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/product', (route) => true);
                  },
                ),
              ),
              Card(
                elevation: 5,
                color: backColor,
                child: ListTile(
                  leading: Icon(
                    Icons.production_quantity_limits,
                    color: buttonColor,
                  ),
                  title: Text(drawertitle3),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: drawertitle,
                child: Text(
                  "Tracker",
                  style: bold,
                ),
              ),
              Card(
                elevation: 5,
                color: backColor,
                child: ListTile(
                  leading: Icon(
                    Icons.report,
                    color: buttonColor,
                  ),
                  title: Text(drawertitle8),
                  onTap: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/reports', (route) => true);
                  },
                ),
              ),
              Card(
                elevation: 5,
                color: backColor,
                child: ListTile(
                  leading: Icon(Icons.health_and_safety, color: buttonColor),
                  title: Text(drawertitle9),
                  onTap: () {},
                ),
              ),
              Card(
                elevation: 5,
                color: backColor,
                child: ListTile(
                  leading: Icon(Icons.work_outline, color: buttonColor),
                  title: Text(drawertitle10),
                  onTap: () {},
                ),
              ),
              Card(
                elevation: 5,
                color: backColor,
                child: ListTile(
                  leading: Icon(Icons.lock_clock, color: buttonColor),
                  title: Text(drawertitle11),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: drawertitle,
                child: Text(about, style: bold),
              ),
              Card(
                elevation: 5,
                color: backColor,
                child: ListTile(
                  leading: Icon(
                    Icons.details,
                    color: buttonColor,
                  ),
                  title: Text(drawertitle4),
                  onTap: () {},
                ),
              ),
              Card(
                elevation: 5,
                color: backColor,
                child: ListTile(
                  leading: Icon(
                    Icons.privacy_tip,
                    color: buttonColor,
                  ),
                  title: Text(drawertitle5),
                  onTap: () {},
                ),
              ),
              Card(
                elevation: 5,
                color: backColor,
                child: ListTile(
                  leading: Icon(
                    Icons.rule,
                    color: buttonColor,
                  ),
                  title: Text(drawertitle6),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: drawertitle,
                child: Text(
                  drawertitle12,
                  style: bold,
                ),
              ),
              Card(
                elevation: 5,
                color: TertiaryColor,
                child: ListTile(
                  leading: Icon(Icons.settings, color: buttonColor),
                  title: Text(settings),
                  onTap: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/settings', (route) => true);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Shop Products'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.wallet_travel),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.notifications),
          ),
        ],
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
                        .pushNamedAndRemoveUntil('/productdesc', (route) => true);
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Container(
                                    color: Colors.brown,
                                    child: Image.asset(
                                      'assets/psych.jpeg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  child: Text('-1%'),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                'Instant Biryani Mix | 100% Natural Millet Breakfast Mix',
                                style: genderstyle),
                          ),
                          Text(price),
                          ListTile(
                            leading: Icon(Icons.shopping_cart),
                            trailing: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                       Navigator.of(context)
                        .pushNamedAndRemoveUntil('/productdesc', (route) => true);
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Container(
                                    color: Colors.brown,
                                    child: Image.asset(
                                      'assets/psych.jpeg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  child: Text('-1%'),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                'Instant Biryani Mix | 100% Natural Millet Breakfast Mix',
                                style: genderstyle),
                          ),
                          Text(price),
                          ListTile(
                            leading: Icon(Icons.shopping_cart),
                            trailing: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                       Navigator.of(context)
                        .pushNamedAndRemoveUntil('/productdesc', (route) => true);
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Container(
                                    color: Colors.brown,
                                    child: Image.asset(
                                      'assets/psych.jpeg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  child: Text('-1%'),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                'Instant Biryani Mix | 100% Natural Millet Breakfast Mix',
                                style: genderstyle),
                          ),
                          Text(price),
                          ListTile(
                            leading: Icon(Icons.shopping_cart),
                            trailing: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                       Navigator.of(context)
                        .pushNamedAndRemoveUntil('/productdesc', (route) => true);
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Container(
                                    color: Colors.brown,
                                    child: Image.asset(
                                      'assets/psych.jpeg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  child: Text('-1%'),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                'Instant Biryani Mix | 100% Natural Millet Breakfast Mix',
                                style: genderstyle),
                          ),
                          Text(price),
                          ListTile(
                            leading: Icon(Icons.shopping_cart),
                            trailing: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                       Navigator.of(context)
                        .pushNamedAndRemoveUntil('/productdesc', (route) => true);
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Container(
                                    color: Colors.brown,
                                    child: Image.asset(
                                      'assets/psych.jpeg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  child: Text('-1%'),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                'Instant Biryani Mix | 100% Natural Millet Breakfast Mix',
                                style: genderstyle),
                          ),
                          Text(price),
                          ListTile(
                            leading: Icon(Icons.shopping_cart),
                            trailing: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                       Navigator.of(context)
                        .pushNamedAndRemoveUntil('/productdesc', (route) => true);
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Container(
                                    color: Colors.brown,
                                    child: Image.asset(
                                      'assets/psych.jpeg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  child: Text('-1%'),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                'Instant Biryani Mix | 100% Natural Millet Breakfast Mix',
                                style: genderstyle),
                          ),
                          Text(price),
                          ListTile(
                            leading: Icon(Icons.shopping_cart),
                            trailing: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                       Navigator.of(context)
                        .pushNamedAndRemoveUntil('/productdesc', (route) => true);
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Container(
                                    color: Colors.brown,
                                    child: Image.asset(
                                      'assets/psych.jpeg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  child: Text('-1%'),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                'Instant Biryani Mix | 100% Natural Millet Breakfast Mix',
                                style: genderstyle),
                          ),
                          Text(price),
                          ListTile(
                            leading: Icon(Icons.shopping_cart),
                            trailing: Icon(Icons.favorite),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                       Navigator.of(context)
                        .pushNamedAndRemoveUntil('/productdesc', (route) => true);
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Container(
                                    color: Colors.brown,
                                    child: Image.asset(
                                      'assets/psych.jpeg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  child: Text('-1%'),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                'Instant Biryani Mix | 100% Natural Millet Breakfast Mix',
                                style: genderstyle),
                          ),
                          Text(price),
                          ListTile(
                            leading: Icon(Icons.shopping_cart),
                            trailing: Icon(Icons.favorite),
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
