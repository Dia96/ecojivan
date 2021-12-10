import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';

class NutrionalChart extends StatefulWidget {
  const NutrionalChart({ Key? key }) : super(key: key);

  @override
  _NutrionalChartState createState() => _NutrionalChartState();
}

class _NutrionalChartState extends State<NutrionalChart> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
         ListTile(
           leading: Text(nutriinfo, style: bold),          
         ),
         ListTile(
           leading: Icon(Icons.food_bank_rounded),
           title: Text(proteins),
           trailing: Text(cal),
         ),
         ListTile(
            leading: Icon(Icons.food_bank_rounded),
             title: Text(fats),
             trailing: Text(cal),
         ),
         ListTile(
            leading: Icon(Icons.food_bank_rounded),
             title: Text(carbs),
             trailing: Text(cal),
         ),
         ListTile(
            leading: Icon(Icons.food_bank_rounded),
             title: Text(fibre),
             trailing: Text(cal),
         ),
      ],
    );
  }
}