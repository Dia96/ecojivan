import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecojivan/constraint.dart';
import 'package:ecojivan/views/components/MyDrawer.dart';
import 'package:flutter/material.dart';
import 'package:multiselectchipgroup/multiselectchipgroup.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double itemHeight = 25;
    final double itemWidth = 15;

    return Scaffold(
      drawer: const MyDrawer(),
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
        // child: Column(
        //   children: [
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('products').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (itemWidth / itemHeight),
                  ),
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot doc = snapshot.data!.docs[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil('/productdesc', (route) => true);
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
                                    child: Text(doc['disc']),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(doc['name'], style: genderstyle),
                            ),
                            Text(doc['price']),
                            ListTile(
                              leading: Icon(Icons.shopping_cart),
                              trailing: Icon(Icons.favorite),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Text("No Data Found");
            }
          },
        ),
      ),
    );
  }
}
