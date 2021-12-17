import 'package:ecojivan/constraint.dart';
import 'package:flutter/material.dart';

class Recipe extends StatefulWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          ListTile(
            leading: Text(ingredients),
            trailing: Text(cal),
          ),
          ListTile(
            leading: Text(ingredients),
            trailing: Text(cal),
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
          ListTile(
            leading: Icon(Icons.circle),
            title: Text(dummy),
          ),
          ListTile(
            leading: Icon(Icons.circle),
            title: Text(dummy),
          ),
        ],
      ),
    );
  }
}
