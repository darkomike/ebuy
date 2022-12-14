import 'package:ecommerce/styles/colors.dart';
import 'package:ecommerce/utils/constant.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
        appBar: AppBar(
          
          backgroundColor: whiteColor, elevation: 0, actions: [
          GestureDetector(
            onTap: () {},
            child: SizedBox(
              height: 40,
              width: 40,
              child: Stack(
                children: [
                  Icon(
                    Icons.comment,
                    color: secondaryColor,
                  ),
                  Positioned(
                    bottom: 20,
                    left: 10,
                    child: Card(
                      shape: const CircleBorder(),
                      shadowColor: primaryColor,
                      elevation: 3,
                      color: primaryColor,
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "5",
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
          widthSpace,
           GestureDetector(
            onTap: () {},
            child: SizedBox(
              height: 40,
              width: 40,
              child: Stack(
                children: [
                  Icon(
                    Icons.notifications,
                    color: secondaryColor,
                  ),
                  Positioned(
                    bottom: 20,
                    left: 10,
                    child: Card(
                      shape: const CircleBorder(),
                      shadowColor: primaryColor,
                      elevation: 3,
                      color: primaryColor,
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "5",
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
        ]),
        body: Container(
          padding: const EdgeInsets.only(left: 10), child: SingleChildScrollView(child: Column(
            children: [
              Text("Categories", style: TextStyle(color: tertiaryColor, fontSize: 30, fontWeight: FontWeight.bold),),
              Container(
                color: primaryColor,
                height: 90,
                child: PageView(
                  children: [
                    Row(
                      children: [

                      ],
                    )
                  ],
                ),
              )
            ],
          )),
          
        ));
  }
}
