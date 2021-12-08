import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                elevation: 10,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Center(child: Text("Diets")),
                ),
              ),
              Card(
                elevation: 10,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Center(child: Text("Nutritional Chart")),
                ),
              ),
              Card(
                elevation: 10,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Center(child: Text("Healthy Recipies")),
                ),
              ),
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
    );
  }
}
