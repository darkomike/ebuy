import 'package:ecommerce/screens/cart.dart';
import 'package:ecommerce/screens/categories.dart';
import 'package:ecommerce/screens/messages.dart';
import 'package:ecommerce/screens/more.dart';
import 'package:ecommerce/screens/profile.dart';
import 'package:ecommerce/screens/search_result.dart';
import 'package:ecommerce/styles/colors.dart';
import 'package:ecommerce/utils/constant.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: getAppBar(index: _currentIndex),
      body: getBody(index: _currentIndex),
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: primaryColor,
          unselectedItemColor: tertiaryColor,
          unselectedLabelStyle: TextStyle(color: tertiaryColor),
          selectedLabelStyle: TextStyle(color: primaryColor),
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: "More",
            ),
          ],
        ),
      ),
    );
  }

  getAppBar({required int index}) {
    switch (index) {
      case 0:
        return commonAppBar();

      case 1:
        return AppBar(backgroundColor: whiteColor, elevation: 0, actions: [
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
        ]);
      case 2:
        return commonAppBar();

      case 3:
        return commonAppBar();

      case 4:
        return commonAppBar();
    }
  }

  AppBar commonAppBar() {
    return AppBar(backgroundColor: whiteColor, elevation: 0, actions: [
      GestureDetector(
        onTap: () {
          push(context: context, destination: const Messages());
        },
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
    ]);
  }

  getBody({required int index}) {
    switch (index) {
      case 0:
        return const HomeBody();
      case 1:
        return SearchBody(context: context);
      case 2:
        return const Cart();
      case 3:
        return const Profile();
      case 4:
        return const More();
    }
  }
}

class SearchBody extends StatelessWidget {
  const SearchBody({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search",
              style: TextStyle(
                  color: tertiaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            heightSpace,
            GestureDetector(
              onTap: () {
                push(context: context, destination: const SearchResult());
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: secondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: tertiaryColor.withOpacity(0.4),
                    ),
                    widthSpace,
                    Text(
                      "Search",
                      style: TextStyle(color: tertiaryColor.withOpacity(0.4)),
                    )
                  ],
                ),
              ),
            ),
            heightSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "RECENTLY VIEWED",
                      style: TextStyle(color: tertiaryColor.withOpacity(0.8)),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "CLEAR",
                      style: TextStyle(color: primaryColor.withOpacity(0.9)),
                    ))
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(children: [
                        const Image(
                            height: 50,
                            width: 50,
                            image: AssetImage("assets/images/scarf.png")),
                        widthSpace,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Red Cotton Scarf",
                              style: TextStyle(
                                  color: tertiaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$11.00",
                              style: TextStyle(
                                  color: tertiaryColor,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ]),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(children: [
                        const Image(
                            height: 50,
                            width: 50,
                            image: AssetImage("assets/images/backpack.png")),
                        widthSpace,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bottle Green Backpack",
                              style: TextStyle(
                                  color: tertiaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$11.00",
                              style: TextStyle(
                                  color: tertiaryColor,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ]),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "RECOMMENDED",
                      style: TextStyle(color: tertiaryColor.withOpacity(0.8)),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "REFRESH",
                      style: TextStyle(color: primaryColor.withOpacity(0.9)),
                    ))
              ],
            ),
            Wrap(
              runSpacing: 10,
              spacing: 20,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: tertiaryColor.withOpacity(0.5)),
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Denim Jeans",
                    style: TextStyle(color: tertiaryColor.withOpacity(0.9)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: tertiaryColor.withOpacity(0.5)),
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Mini Skirts",
                    style: TextStyle(color: tertiaryColor.withOpacity(0.9)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: tertiaryColor.withOpacity(0.5)),
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Jackets",
                    style: TextStyle(color: tertiaryColor.withOpacity(0.9)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: tertiaryColor.withOpacity(0.5)),
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Accessories",
                    style: TextStyle(color: tertiaryColor.withOpacity(0.9)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: tertiaryColor.withOpacity(0.5)),
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Sports Accessories",
                    style: TextStyle(color: tertiaryColor.withOpacity(0.9)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: tertiaryColor.withOpacity(0.5)),
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Yoga Pants",
                    style: TextStyle(color: tertiaryColor.withOpacity(0.9)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: tertiaryColor.withOpacity(0.5)),
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Eye Shadow",
                    style: TextStyle(color: tertiaryColor.withOpacity(0.9)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                    color: tertiaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              color: tertiaryColor,
                              fontWeight: FontWeight.bold,
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
                              fontWeight: FontWeight.bold,
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
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 55,
                          width: 55,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      const CircleBorder()),
                                  backgroundColor:
                                      MaterialStateProperty.all(whiteColor)),
                              onPressed: () {
                                push(
                                    context: context,
                                    destination: const Categories(),
                                    direction: AxisDirection.right);
                              },
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: primaryColor,
                              )),
                        ),
                        heightSpace,
                        heightSpace,
                        heightSpace,
                        Text(
                          "See All",
                          style: TextStyle(
                              color: tertiaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
              ),
              heightSpace,
              heightSpace,
              Text(
                "Latest",
                style: TextStyle(
                    color: tertiaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              heightSpace,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Card(
                      elevation: 5,
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 180,
                        width: getSize(context).width - 90,
                        padding: const EdgeInsets.only(left: 20, right: 100),
                        decoration: BoxDecoration(
                            color: blackColor,
                            backgroundBlendMode: BlendMode.difference,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/base.jpg"),
                                fit: BoxFit.cover)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Find all your summer clothing needs",
                                style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              heightSpace,
                              heightSpace,
                              ElevatedButton(
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(
                                        const EdgeInsets.all(8)),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50))),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            whiteColor),
                                  ),
                                  onPressed: () {
                                    // pushReplace(
                                    //     direction: AxisDirection.down,
                                    //     context: context,
                                    //     destination: const HomePage());
                                  },
                                  child: SizedBox(
                                    height: 30,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "SEE MORE",
                                          style: TextStyle(
                                              color: tertiaryColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        CircleAvatar(
                                          backgroundColor: primaryColor,
                                          child: const Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 16,
                                            color: whiteColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ]),
                      ),
                    ),
                    widthSpace,
                    Card(
                      elevation: 5,
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 180,
                        width: getSize(context).width - 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/base2.jpg"),
                                fit: BoxFit.cover)),
                        child: Column(children: []),
                      ),
                    ),
                    widthSpace,
                  ],
                ),
              ),
              heightSpace,
              heightSpace,
              SizedBox(
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  padding: EdgeInsets.zero,
                  children: [
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 5,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Image(
                                image:
                                    AssetImage("assets/images/women_shoes.png"),
                              ),
                              Text(
                                "Ankle boots",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\$49.99",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 5,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Image(
                                image: AssetImage("assets/images/backpack.png"),
                              ),
                              Text(
                                "Backpack",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\$20.58",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 5,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Image(
                                image: AssetImage(
                                  "assets/images/scarf.png",
                                ),
                              ),
                              Text(
                                "Scarf",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\$11.00",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 5,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Image(
                                image: AssetImage(
                                  "assets/images/women_shoes.png",
                                ),
                              ),
                              Text(
                                "Ankle boots",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\$49.99",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
