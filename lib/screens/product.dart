// import 'package:flutter/material.dart';

// import '../constraint.dart';

// class Product extends StatefulWidget {
//   const Product({ Key? key }) : super(key: key);

//   @override
//   _ProductState createState() => _ProductState();
// }

// class _ProductState extends State<Product> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        drawer: Drawer(
//           child: Container(
//             decoration: BoxDecoration(color: backColor),
//             child: ListView(
//               children: [
//                 UserAccountsDrawerHeader(
//                   accountName: Text(username),
//                   accountEmail: Text(useremail),
//                   currentAccountPicture: CircleAvatar(
//                       backgroundImage: AssetImage('assets/logo.png')),
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/logo.png'),
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: drawertitle,
//                   child: Text("Services", style: bold),
//                 ),
//                 Card(
//                   elevation: 5,
//                   color: backColor,
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.rate_review_rounded,
//                       color: buttonColor,
//                     ),
//                     title: Text(drawertitle1),
//                     onTap: () {
//                       Navigator.of(context)
//                           .pushNamedAndRemoveUntil('/consult', (route) => true);
//                     },
//                   ),
//                 ),
//                 Card(
//                   elevation: 5,
//                   color: backColor,
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.rate_review_rounded,
//                       color: buttonColor,
//                     ),
//                     title: Text(drawertitle2),
//                     onTap: () {
//                       Navigator.of(context)
//                           .pushNamedAndRemoveUntil('/product', (route) => true);
//                     },
//                   ),
//                 ),
//                 Card(
//                   elevation: 5,
//                   color: backColor,
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.production_quantity_limits,
//                       color: buttonColor,
//                     ),
//                     title: Text(drawertitle3),
//                     onTap: () {
                     
//                     },
//                   ),
//                 ),

//                  Padding(
//                   padding: drawertitle,
//                   child: Text(
//                     "Tracker",
//                     style: bold,
//                   ),
//                 ),

//                  Card(
//                   elevation: 5,
//                   color: backColor,
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.report,
//                       color: buttonColor,
//                     ),
//                     title: Text(drawertitle8),
//                     onTap: () {
//                       Navigator.of(context)
//                           .pushNamedAndRemoveUntil('/reports', (route) => true);
//                     },
//                   ),
//                 ),
//                 Card(
//                   elevation: 5,
//                   color: backColor,
//                   child: ListTile(
//                     leading: Icon(Icons.health_and_safety, color: buttonColor),
//                     title: Text(drawertitle9),
//                     onTap: () {},
//                   ),
//                 ),
//                 Card(
//                   elevation: 5,
//                   color: backColor,
//                   child: ListTile(
//                     leading: Icon(Icons.work_outline, color: buttonColor),
//                     title: Text(drawertitle10),
//                     onTap: () {},
//                   ),
//                 ),
//                 Card(
//                   elevation: 5,
//                   color: backColor,
//                   child: ListTile(
//                     leading: Icon(Icons.lock_clock, color: buttonColor),
//                     title: Text(drawertitle11),
//                     onTap: () {},
//                   ),
//                 ),
                
//                 Padding(
//                   padding: drawertitle,
//                   child: Text(about, style: bold),
//                 ),
//                 Card(
//                   elevation: 5,
//                   color: backColor,
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.details,
//                       color: buttonColor,
//                     ),
//                     title: Text(drawertitle4),
//                     onTap: () {},
//                   ),
//                 ),
//                 Card(
//                   elevation: 5,
//                   color: backColor,
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.privacy_tip,
//                       color: buttonColor,
//                     ),
//                     title: Text(drawertitle5),
//                     onTap: () {},
//                   ),
//                 ),
//                 Card(
//                   elevation: 5,
//                   color: backColor,
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.rule,
//                       color: buttonColor,
//                     ),
//                     title: Text(drawertitle6),
//                     onTap: () {},
//                   ),
//                 ),
              
//                 Padding(
//                   padding: drawertitle,
//                   child: Text(
//                     drawertitle12,
//                     style: bold,
//                   ),
//                 ),
//                 Card(
//                   elevation: 5,
//                   color: TertiaryColor,
//                   child: ListTile(
//                     leading: Icon(Icons.settings, color: buttonColor),
//                     title: Text(settings),
//                     onTap: () {},
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         appBar: AppBar(
//           title: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                 ),
//                 Text(location),
//               ]),
//           actions: [
//             Padding(
//               padding: const EdgeInsets.only(right: 20),
//               child: Icon(Icons.wallet_travel),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 20),
//               child: Icon(Icons.notifications),
//             ),
//           ],
//           flexibleSpace: Container(
//             decoration: gradientdecoration,
//           ),
//           //backgroundColor: Colors.transparent,
//         ),
//         body:  Flexible(
//           child: GridView(
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               //childAspectRatio: (itemWidth / itemHeight),
//             ),
//             children: [
//               Card(
//                 child: ListTile(
//                   leading: ClipRRect(
//                     borderRadius: BorderRadius.circular(10.0),
//                     child: Container(
//                         height: 40.0,
//                         width: 40.0,
//                         color: PrimaryColor,
//                         child: Image.asset('assets/logo.png')),
//                   ),
//                   title: Text('Body Pain'),
//                 ),
//               ),
//               Card(
//                 child: ListTile(
//                   leading: ClipRRect(
//                     borderRadius: BorderRadius.circular(10.0),
//                     child: Container(
//                         height: 40.0,
//                         width: 40.0,
//                         color: PrimaryColor,
//                         child: Image.asset('assets/logo.png')),
//                   ),
//                   title: Text('Vomiting'),
//                 ),
//               ),
//               Card(
//                 child: ListTile(
//                   leading: ClipRRect(
//                     borderRadius: BorderRadius.circular(10.0), //or 15.0
//                     child: Container(
//                         height: 40.0,
//                         width: 40.0,
//                         color: PrimaryColor,
//                         child: Image.asset('assets/logo.png')),
//                   ),
//                   title: Text('a'),
//                 ),
//               ),
//               Card(
//                 child: ListTile(
//                   leading: ClipRRect(
//                     borderRadius: BorderRadius.circular(10.0), //or 15.0
//                     child: Container(
//                         height: 40.0,
//                         width: 40.0,
//                         color: PrimaryColor,
//                         child: Image.asset('assets/logo.png')),
//                   ),
//                   title: Text(acne),
//                 ),
//               ),
//               Card(
//                 child: ListTile(
//                   leading: ClipRRect(
//                     borderRadius: BorderRadius.circular(10.0), //or 15.0
//                     child: Container(
//                         height: 40.0,
//                         width: 40.0,
//                         color: PrimaryColor,
//                         child: Image.asset('assets/logo.png')),
//                   ),
//                   title: Text('Fever'),
//                 ),
//               ),
//               Card(
//                 child: ListTile(
//                   leading: ClipRRect(
//                     borderRadius: BorderRadius.circular(10.0), //or 15.0
//                     child: Container(
//                         height: 40.0,
//                         width: 40.0,
//                         color: PrimaryColor,
//                         child: Image.asset('assets/logo.png')),
//                   ),
//                   title: Text('Sneezing'),
//                 ),
//               ),
//               Card(
//                 child: ListTile(
//                   leading: ClipRRect(
//                     borderRadius: BorderRadius.circular(10.0), //or 15.0
//                     child: Container(
//                         height: 40.0,
//                         width: 40.0,
//                         color: PrimaryColor,
//                         child: Image.asset('assets/logo.png')),
//                   ),
//                   title: Text(runny),
//                 ),
//               ),
//               Card(
//                 child: ListTile(
//                   leading: ClipRRect(
//                     borderRadius: BorderRadius.circular(10.0), //or 15.0
//                     child: Container(
//                         height: 40.0,
//                         width: 40.0,
//                         color: PrimaryColor,
//                         child: Image.asset('assets/logo.png')),
//                   ),
//                   title: Text('Headache'),
//                 ),
//               ),
             
//               Card(
//                 child: ListTile(
//                   leading: ClipRRect(
//                     borderRadius: BorderRadius.circular(10.0), //or 15.0
//                     child: Container(
//                         height: 40.0,
//                         width: 40.0,
//                         color: PrimaryColor,
//                         child: Image.asset('assets/logo.png')),
//                   ),
//                   title: Text('Loose Motion'),
//                 ),
//               ),
//             ],
//           ),
//         ),
      
//     );
//   }
// }





import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';
import 'package:multiselectchipgroup/multiselectchipgroup.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double itemHeight = 5;
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
                    onTap: () {
                     
                    },
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
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                ),
                Text(location),
              ]),
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
                 
                  Card(
                   child: Column(
                     children: [
    
                     ],
                   ),
                  ),
                             
                  Card(
                  child: Column(
                    children: [
    
                    ],
                  ),
                  ),

                   Card(
                   child: Column(
                     children: [
    
                     ],
                   ),
                  ),
                             
                  Card(
                  child: Column(
                    children: [
    
                    ],
                  ),
                  ),

                   Card(
                   child: Column(
                     children: [
    
                     ],
                   ),
                  ),
                             
                  Card(
                  child: Column(
                    children: [
    
                    ],
                  ),
                  ),

                   Card(
                   child: Column(
                     children: [
    
                     ],
                   ),
                  ),
                             
                  Card(
                  child: Column(
                    children: [
    
                    ],
                  ),
                  ),

                   Card(
                   child: Column(
                     children: [
    
                     ],
                   ),
                  ),
                             
                  Card(
                  child: Column(
                    children: [
    
                    ],
                  ),
                  ),

                   Card(
                   child: Column(
                     children: [
    
                     ],
                   ),
                  ),
                             
                  Card(
                  child: Column(
                    children: [
    
                    ],
                  ),
                  ),

                   Card(
                   child: Column(
                     children: [
    
                     ],
                   ),
                  ),
                             
                  Card(
                  child: Column(
                    children: [
    
                    ],
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


