import 'package:ecommerce/styles/colors.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: primaryColor,
          ),
        ),
        title: Container(
            padding: const EdgeInsets.only(left: 10),
            margin: const EdgeInsets.only(top: 50, bottom: 45),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      child: Chip(
                        
                          backgroundColor: primaryColor,
                          avatar: const Icon(
                            Icons.star,
                            color: whiteColor,
                            size: 8,
                          ),
                          label: const Text("4.8",
                              style: TextStyle(color: whiteColor))),
                    )
                  ],
                )
              ],
            )),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              height: 40,
              width: 40,
              child: Stack(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: secondaryColor,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 11,
                    child: Card(
                      shape: const CircleBorder(),
                      shadowColor: primaryColor,
                      elevation: 3,
                      color: primaryColor,
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "7",
                          style: TextStyle(
                              color: whiteColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
