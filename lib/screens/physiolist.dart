import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';
import 'package:multiselectchipgroup/multiselectchipgroup.dart';

class PhysioList extends StatelessWidget {
  const PhysioList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double itemHeight = 15;
    final double itemWidth = 15;

    return Scaffold(
      appBar: AppBar(
        title: Text('Physiotherapy'),
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
   
 

                     Padding(
                       padding: paddingall,
                       child: GestureDetector(
                         onTap: () {
                           Navigator.of(context)
                              .pushNamedAndRemoveUntil('/doc', (route) => true);
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
                                'ORTHOPEDIC',
                                style: opacitystyle,
                                textAlign: TextAlign.center,
                              ))),
                                           ),
                       ),
                     ),

                     Padding(
                       padding: paddingall,
                       child: GestureDetector(
                         onTap: () {
                           Navigator.of(context)
                              .pushNamedAndRemoveUntil('/doc', (route) => true);
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
                                'CARDIO-RESPIRATORY',
                                style: opacitystyle,
                                textAlign: TextAlign.center,
                              ))),
                                           ),
                       ),
                     ), 

                      Padding(
                       padding: paddingall,
                       child: GestureDetector(
                         onTap: () {
                           Navigator.of(context)
                              .pushNamedAndRemoveUntil('/doc', (route) => true);
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
                                'PEDIATRIC',
                                style: opacitystyle,
                                textAlign: TextAlign.center,
                              ))),
                                           ),
                       ),
                     ), 

                      Padding(
                       padding: paddingall,
                       child: GestureDetector(
                         onTap: () {
                           Navigator.of(context)
                              .pushNamedAndRemoveUntil('/doc', (route) => true);
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
                                'SPORTS',
                                style: opacitystyle,
                                textAlign: TextAlign.center,
                              ))),
                                           ),
                       ),
                     ), 

                      Padding(
                       padding: paddingall,
                       child: GestureDetector(
                         onTap: () {
                           Navigator.of(context)
                              .pushNamedAndRemoveUntil('/doc', (route) => true);
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
                                "WOMEN’S HEALTH",
                                style: opacitystyle,
                                textAlign: TextAlign.center,
                              ))),
                                           ),
                       ),
                     ), 

                      Padding(
                       padding: paddingall,
                       child: GestureDetector(
                         onTap: () {
                           Navigator.of(context)
                              .pushNamedAndRemoveUntil('/doc', (route) => true);
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
                                'PELVIC FLOOR', 
                                style: opacitystyle,
                                textAlign: TextAlign.center,
                              ))),
                                           ),
                       ),
                     ), 

                     Padding(
                       padding: paddingall,
                       child: GestureDetector(
                         onTap: () {
                           Navigator.of(context)
                              .pushNamedAndRemoveUntil('/doc', (route) => true);
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
                                "NEURO",
                                style: opacitystyle,
                                textAlign: TextAlign.center,
                              ))),
                                           ),
                       ),
                     ), 

                     Padding(
                       padding: paddingall,
                       child: GestureDetector(
                         onTap: () {
                           Navigator.of(context)
                              .pushNamedAndRemoveUntil('/doc', (route) => true);
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
                                "VESTIBULAR",
                                style: opacitystyle,
                                textAlign: TextAlign.center,
                              ))),
                                           ),
                       ),
                     ), 

                     Padding(
                       padding: paddingall,
                       child: GestureDetector(
                         onTap: () {
                           Navigator.of(context)
                              .pushNamedAndRemoveUntil('/doc', (route) => true);
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
                                "MUSCULOSKELETAL",
                                style: opacitystyle,
                                textAlign: TextAlign.center,
                              ))),
                                           ),
                       ),
                     ), 

                     Padding(
                       padding: paddingall,
                       child: GestureDetector(
                         onTap: () {
                           Navigator.of(context)
                              .pushNamedAndRemoveUntil('/doc', (route) => true);
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
                                "NOT SURE/ ALL",
                                style: opacitystyle,
                                textAlign: TextAlign.center,
                              ))),
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
