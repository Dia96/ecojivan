import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';

class HealthyRecipe extends StatefulWidget {
  const HealthyRecipe({Key? key}) : super(key: key);

  @override
  _HealthyRecipeState createState() => _HealthyRecipeState();
}

class _HealthyRecipeState extends State<HealthyRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title: Text(recipe),
        flexibleSpace: Container(
          decoration: gradientdecoration,
        ),
      ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: lefttop,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    foodname,
                    style: bold,
                  ),
                ),
              ),
              Padding(
                padding: lefttop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.lock_clock),
                        Text(duration),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.lock_clock),
                        Text(duration),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.food_bank),
                        Text(cal),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: lefttop,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    ingredients,
                    style: bold,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text(ingredients),
                  trailing: Text(cal),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text(ingredients),
                  trailing: Text(cal),
                ),
              ),
              Padding(
                padding: lefttop,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    steps,
                    style: bold,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.circle),
                  title: Text(dummy),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.circle),
                  title: Text(dummy),
                ),
              ),
            ],
          ),
        ),
      );
  
  }
}
