import 'package:ecommerce/styles/colors.dart';
import 'package:ecommerce/utils/constant.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  PageController _slideController = PageController();
  PageController _bodyController = PageController();
  int _currentSlideIndex = 0;
  int _currentBodyIndex = 0;
  int _selectedColor = 0;
  String _selectedSize = "5.0";

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
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Faux Sued Ankle Boots",
              style: TextStyle(color: tertiaryColor, fontSize: 16),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("\$ 99.00",
                    style: TextStyle(color: tertiaryColor, fontSize: 16)),
                widthSpace,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Icons.star,
                          color: whiteColor,
                          size: 16,
                        ),
                        widthSpace,
                        Text(
                          "4.8",
                          style: TextStyle(color: whiteColor, fontSize: 16),
                        )
                      ]),
                )
              ],
            )
          ],
        ),
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
      body: Container(
        color: whiteColor,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                color: whiteColor,
                height: (1 / 3) * getSize(context).height,
                child: Stack(
                  children: [
                    const Center(
                      child: CircularProgressIndicator(),
                    ),
                    Container(
                      height: (1 / 3) * getSize(context).height,
                      child: PageView(
                        controller: _slideController,
                        onPageChanged: (index) {
                          setState(() {
                            _currentSlideIndex = index;
                          });
                        },
                        children: [
                          Container(
                              margin: EdgeInsets.zero,
                              height: (1 / 3) * getSize(context).height,
                              decoration: BoxDecoration(
                                  backgroundBlendMode: BlendMode.dstATop,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          getImagePathJpg(name: "base"))),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.white, whiteColor]))),
                          Image(
                            height: (1 / 3) * getSize(context).height,
                            fit: BoxFit.cover,
                            image: AssetImage(getImagePathJpg(name: "base2")),
                          ),
                          Image(
                            height: (1 / 3) * getSize(context).height,
                            fit: BoxFit.cover,
                            image: AssetImage(getImagePathJpg(name: "base")),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: (getSize(context).width / 2) - 30,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: _currentSlideIndex == 0
                                      ? Colors.black.withOpacity(1)
                                      : Colors.black.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            widthSpace,
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: _currentSlideIndex == 1
                                      ? Colors.black.withOpacity(1)
                                      : Colors.black.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            widthSpace,
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: _currentSlideIndex == 2
                                      ? Colors.black.withOpacity(1)
                                      : Colors.black.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20)),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _bodyController.jumpToPage(0);
                          _currentBodyIndex = 0;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
                      child: Text(
                        "Products",
                        style: TextStyle(
                            color: _currentBodyIndex == 0
                                ? primaryColor
                                : tertiaryColor,
                            fontWeight: FontWeight.bold),
                      )),
                  widthSpace,
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _bodyController.jumpToPage(1);
                          _currentBodyIndex = 1;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
                      child: Text(
                        "Details",
                        style: TextStyle(
                            color: _currentBodyIndex == 1
                                ? primaryColor
                                : tertiaryColor,
                            fontWeight: FontWeight.bold),
                      )),
                  widthSpace,
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _bodyController.jumpToPage(2);
                          _currentBodyIndex = 2;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        elevation: MaterialStateProperty.all<double>(0),
                      ),
                      child: Text(
                        "Reviews",
                        style: TextStyle(
                            color: _currentBodyIndex == 2
                                ? primaryColor
                                : tertiaryColor,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              Container(
                height: (1 / 2.7) * getSize(context).height,
                color: whiteColor,
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  controller: _bodyController,
                  pageSnapping: true,
                  onPageChanged: (index) {
                    setState(() {
                      _currentBodyIndex = index;
                    });
                  },
                  children: [
                    Container(
                      height: (1 / 2.7) * getSize(context).height,
                      color: whiteColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15.0, top: 10),
                                child: Text(
                                  "SELECT COLOR",
                                  style: TextStyle(color: tertiaryColor),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                physics: const BouncingScrollPhysics(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              const CircleBorder()),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.pink)),
                                      onPressed: () {
                                        setState(() {
                                          _selectedColor = 0;
                                        });
                                      },
                                      child: SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: _selectedColor == 0
                                            ? const Icon(
                                                Icons.done,
                                                color: whiteColor,
                                              )
                                            : const SizedBox(),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              const CircleBorder()),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.orange)),
                                      onPressed: () {
                                        setState(() {
                                          _selectedColor = 1;
                                        });
                                      },
                                      child: SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: _selectedColor == 1
                                            ? const Icon(
                                                Icons.done,
                                                color: whiteColor,
                                              )
                                            : const SizedBox(),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              const CircleBorder()),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.blue)),
                                      onPressed: () {
                                        setState(() {
                                          _selectedColor = 2;
                                        });
                                      },
                                      child: SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: _selectedColor == 2
                                            ? const Icon(
                                                Icons.done,
                                                color: whiteColor,
                                              )
                                            : const SizedBox(),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              const CircleBorder()),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.white)),
                                      onPressed: () {
                                        setState(() {
                                          _selectedColor = 3;
                                        });
                                      },
                                      child: SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: _selectedColor == 3
                                            ? Icon(
                                                Icons.done,
                                                color: blackColor,
                                              )
                                            : const SizedBox(),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              const CircleBorder()),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.grey)),
                                      onPressed: () {
                                        setState(() {
                                          _selectedColor = 4;
                                        });
                                      },
                                      child: SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: _selectedColor == 4
                                            ? const Icon(
                                                Icons.done,
                                                color: whiteColor,
                                              )
                                            : const SizedBox(),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              const CircleBorder()),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.black)),
                                      onPressed: () {
                                        setState(() {
                                          _selectedColor = 5;
                                        });
                                      },
                                      child: SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: _selectedColor == 5
                                            ? const Icon(
                                                Icons.done,
                                                color: whiteColor,
                                              )
                                            : const SizedBox(),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15.0, top: 10),
                                child: Text(
                                  "SELECT SIZE (US)",
                                  style: TextStyle(color: tertiaryColor),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 10),
                                  child: Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              _bodyController.jumpToPage(2);
                                              _currentBodyIndex = 2;
                                            });
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            elevation: MaterialStateProperty
                                                .all<double>(0),
                                          ),
                                          child: Text(
                                            "4.5",
                                            style: TextStyle(
                                                color: _selectedSize == "4.5"
                                                    ? primaryColor
                                                    : tertiaryColor,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      widthSpace,
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              _bodyController.jumpToPage(2);
                                              _currentBodyIndex = 2;
                                            });
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            elevation: MaterialStateProperty
                                                .all<double>(0),
                                          ),
                                          child: Text(
                                            "5.0",
                                            style: TextStyle(
                                                color: _selectedSize == "5.0"
                                                    ? primaryColor
                                                    : tertiaryColor,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      widthSpace,
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              _bodyController.jumpToPage(2);
                                              _currentBodyIndex = 2;
                                            });
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            elevation: MaterialStateProperty
                                                .all<double>(0),
                                          ),
                                          child: Text(
                                            "6.0",
                                            style: TextStyle(
                                                color: _selectedSize == "6.0"
                                                    ? primaryColor
                                                    : tertiaryColor,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      widthSpace,
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              _bodyController.jumpToPage(2);
                                              _currentBodyIndex = 2;
                                            });
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            elevation: MaterialStateProperty
                                                .all<double>(0),
                                          ),
                                          child: Text(
                                            "7.0",
                                            style: TextStyle(
                                                color: _selectedSize == "7.0"
                                                    ? primaryColor
                                                    : tertiaryColor,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      widthSpace,
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              _bodyController.jumpToPage(2);
                                              _currentBodyIndex = 2;
                                            });
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            elevation: MaterialStateProperty
                                                .all<double>(0),
                                          ),
                                          child: Text(
                                            "8.0",
                                            style: TextStyle(
                                                color: _selectedSize == "8.0"
                                                    ? primaryColor
                                                    : tertiaryColor,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      widthSpace,
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: (1 / 2.7) * getSize(context).height,
                      color: whiteColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "BRAND",
                                    style: TextStyle(
                                        color: tertiaryColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Lily's Ankle Boots",
                                    style: TextStyle(
                                        color: tertiaryColor,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "SKU",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: tertiaryColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "05939393948292",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: tertiaryColor,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "CONDITION",
                                    style: TextStyle(
                                        color: tertiaryColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Brand New, With Box",
                                    style: TextStyle(
                                        color: tertiaryColor,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "MATERIAL",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: tertiaryColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Faux Sued, Velvet",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: tertiaryColor,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "CATEGORY",
                                    style: TextStyle(
                                        color: tertiaryColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Women Shoes",
                                    style: TextStyle(
                                        color: tertiaryColor,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "FITTING",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: tertiaryColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "True To Size",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: tertiaryColor,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: (1 / 2.7) * getSize(context).height,
                      color: Colors.white,
                      child: Flexible(
                          child: ListView(
                        children: const [
                          ReviewCard(),
                           ReviewCard(),
                            ReviewCard(),
                             ReviewCard(),
                              ReviewCard(), 
                        ],
                      )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        height: (1 / 10) * getSize(context).height,
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(whiteColor),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "SHARE THIS",
                        style: TextStyle(
                            color: tertiaryColor, fontWeight: FontWeight.bold),
                      ),
                      CircleAvatar(
                        backgroundColor: tertiaryColor,
                        child: const Icon(
                          Icons.arrow_upward_sharp,
                          size: 16,
                          color: whiteColor,
                        ),
                      )
                    ],
                  )),
            ),
            widthSpace,
            Expanded(
              child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(primaryColor),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "ADD TO CART",
                        style: TextStyle(
                            color: whiteColor, fontWeight: FontWeight.bold),
                      ),
                      CircleAvatar(
                        backgroundColor: whiteColor,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                          color: primaryColor,
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 5),
      child: Row(children: [
        const Expanded(
            flex: 1,
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Text("JD"),
            )),
        Expanded(
            flex: 3,
            child: SizedBox(
              child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 14,
                              color: primaryColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: primaryColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: primaryColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: primaryColor,
                            ),
                            Icon(
                              Icons.star,
                              size: 14,
                              color: tertiaryColor
                                  .withOpacity(0.5),
                            )
                          ],
                        ),
                        Text(
                          "10 Oct, 2018",
                          style: TextStyle(
                              color: tertiaryColor
                                  .withOpacity(0.6)),
                        )
                      ],
                    ),
                    Text(
                      "Jane Doe",
                      style: TextStyle(
                          color: tertiaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet consectur adipiscing elit sed",
                      style: TextStyle(
                          color: tertiaryColor,
                          fontWeight: FontWeight.w400),
                    ),
                  ]),
            ))
      ]),
    );
  }
}
