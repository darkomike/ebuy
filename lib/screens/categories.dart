import 'package:ecommerce/styles/colors.dart';
import 'package:ecommerce/utils/constant.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: const SizedBox(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.clear,
              color: primaryColor,
            ),
          ),
          widthSpace
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "All Categories",
                style: TextStyle(
                    color: tertiaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              heightSpace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage('assets/images/apparel.png'),
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            "Apparel",
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage('assets/images/beauty.png'),
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            "Beauty",
                            style: TextStyle(
                                color: tertiaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage('assets/images/shoes.png'),
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            "Shoes",
                            style: TextStyle(
                                color: tertiaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage('assets/images/electronics.png'),
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            "Electronics",
                            style: TextStyle(
                                color: tertiaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage('assets/images/furniture.png'),
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            "Furniture",
                            style: TextStyle(
                                color: tertiaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                            image: AssetImage('assets/images/stationary.png'),
                            height: 90,
                            width: 90,
                          ),
                          Text(
                            "Stationary",
                            style: TextStyle(
                                color: tertiaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                  widthSpace,
                  widthSpace,
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MEN'S APPAREL",
                                style: TextStyle(
                                    color: tertiaryColor.withOpacity(0.5)),
                              ),
                              heightSpace,
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                margin: EdgeInsets.zero,
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text(
                                        "T-shirts",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Shirts",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Pants and Jeans",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Socks and Ties",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Underwear",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Jackets",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Coats",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Sweaters",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          heightSpace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "WOMEN'S APPAREL",
                                style: TextStyle(
                                    color: tertiaryColor.withOpacity(0.5)),
                              ),
                              heightSpace,
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                margin: EdgeInsets.zero,
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text(
                                        "Office wear",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "BLouse & T-Shirts",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Pants and Jeans",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Dresses",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Lingerie",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Jackets",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Coats",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Sweaters",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      trailing: CircleAvatar(
                                          backgroundColor:
                                              const Color(0xff707070)
                                                  .withOpacity(0.2),
                                          child: Icon(
                                            Icons.arrow_circle_right,
                                            color: tertiaryColor,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
