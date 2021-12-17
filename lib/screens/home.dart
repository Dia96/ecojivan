import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          //backgroundColor: Colors.transparent,
        ),
      body: SingleChildScrollView(
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
                      //height: 300,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/logo.png'),
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
                              SizedBox(
                              height: 5,
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
    
                     ClipRRect(
                      borderRadius: BorderRadius.circular(10.0), 
                      child: Container(
                          height: 100.0,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/diab.jpeg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.darken),
                            ),
                          ),
                          child: Center(
                              child: Text(
                            consult1,
                            style: opacitystyle,
                            textAlign: TextAlign.center,
                          ))),
                    ),
    
                     GestureDetector(
                       onTap: () {
                         Navigator.of(context)
                            .pushNamedAndRemoveUntil('/physio', (route) => true);
                       },
                       child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                            height: 100.0,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/therapist.jpeg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.darken),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              consult2,
                              style: opacitystyle,
                              textAlign: TextAlign.center,
                            ))),
                                         ),
                     ),

                     GestureDetector(
                       onTap: () {
                         Navigator.of(context)
                            .pushNamedAndRemoveUntil('/psych', (route) => true);
                       },
                       child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0), //or 15.0
                        child: Container(
                            height: 100.0,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/psych.jpeg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.darken),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              consult3,
                              style: opacitystyle,
                              textAlign: TextAlign.center,
                            ))),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil('/diet', (route) => true);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0), //or 15.0
                        child: Container(
                            height: 100.0,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/diet.jpeg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.darken),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              diet,
                              style: opacitystyle,
                              textAlign: TextAlign.center,
                            ))),
                      ),
                    ),
    
                    GestureDetector(
                      onTap: () {
                         Navigator.of(context)
                          .pushNamedAndRemoveUntil('/cuisine', (route) => true);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0), //or 15.0
                        child: Container(
                            height: 100.0,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/recipe.jpeg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.darken),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              recipe,
                              style: opacitystyle,
                              textAlign: TextAlign.center,
                            ))),
                      ),
                    ),
    
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                          .pushNamedAndRemoveUntil('/workout', (route) => true);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0), //or 15.0
                        child: Container(
                            height: 100.0,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/workout.jpeg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.darken),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              workout,
                              style: opacitystyle,
                              textAlign: TextAlign.center,
                            ))),
                      ),
                    ),
    
                    // Card(
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(15.0)),
                    //   elevation: 4,
                    //   child: IntrinsicHeight(
                    //     child: Column(
                    //       children: [
                    //         ClipRRect(
                    //           borderRadius: BorderRadius.circular(10.0),
                    //           child: Container(
                    //               height: 50.0,
                    //               width: 80,
                    //               child: Image.asset(
                    //                 'assets/logo.png',
                    //                 fit: BoxFit.cover,
                    //               )),
                    //         ),
                    //         GestureDetector(
                    //             onTap: () {
                    //               Navigator.of(context).pushNamedAndRemoveUntil(
                    //                   '/diet', (route) => true);
                    //             },
                    //             child: Container(
                    //                 height: 50,
                    //                 width: 80,
                    //                 child: Padding(
                    //                   padding: lefttop,
                    //                   child: Text(
                    //                     diet,
                    //                     maxLines: 2,
                    //                   ),
                    //                 )))
                    //       ],
                    //     ),
                    //   ),
                    // ),
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
      ),
    );
  }
}
