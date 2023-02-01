import 'dart:ui';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Details Screen",
          style: TextStyle(
              fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            height: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/image1.jpg"))),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 250),
            padding: EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Text(
              "Adidas Shoe",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(top: 2, bottom: 10, right: 250),
            alignment: Alignment.center,
            child: Text(
              "Rs. 20000.00",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.only(top: 10),
            margin: EdgeInsets.only(top: 20, right: 350, bottom: 15),
            child: Text(
              "More Details",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 150),
            width: 300,
            child: Text(
                "Gear up with the latest collection from adidas Originals, Running, Football, Training with over 20,000+ products; you will never run out of choices. Grab your favorites now.  Secure Payments. 100% original products. Gear up with adidas. "),
          )
        ]),
      )),
    );
    throw UnimplementedError();
  }
}
