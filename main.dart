import 'dart:html';
import 'ProductPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  List<String> price = [
    "Rs. 20000.00",
    "Rs. 5000.00",
    "Rs. 20000.00",
    "Rs. 20000.00",
    "Rs. 20000.00",
    "Rs. 20000.00"
  ];

  List<String> product = [
    "Adidas Shoe",
    "Smart Watch",
    "Adidas Shoe",
    "Adidas Shoe",
    "Adidas Shoe",
    "Adidas Shoe"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "SHOPPERS",
            style: TextStyle(
                fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        ),
        body: GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            for (int i = 1; i <= 6; i++)
              Container(
                  height: 400,
                  width: 400,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 8)
                      ],
                      color: Colors.white),
                  margin: EdgeInsets.all(50),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductPage()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: Image.asset(
                            'assets/image$i.jpg',
                            height: 250,
                            width: 250,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(product[i - 1],
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(price[i - 1],
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                      ),
                    ],
                  )),
          ],
        ));
  }
}
