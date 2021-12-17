import 'package:flutter/material.dart';

import '../constraint.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({ Key? key }) : super(key: key);

  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
        flexibleSpace: Container(
          decoration: gradientdecoration,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: paddingall,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/psych.jpeg'),
              Align(
                alignment: Alignment.center,
                child: Text(product, style: namestyle)),          
              Text(dummy),
              Text('Price : $price', style: bold,),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text('Add to Cart'))
            ],
          ),
        ),
      ),
    );
  }
}