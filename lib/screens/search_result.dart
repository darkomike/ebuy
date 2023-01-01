import 'package:ecommerce/screens/product.dart';
import 'package:ecommerce/styles/colors.dart';
import 'package:ecommerce/utils/constant.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  final _searchController = TextEditingController();

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              backgroundColor: whiteColor,
              elevation: 0,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: primaryColor,
                ),
              ),
              title: Container(
                padding: const EdgeInsets.only(left: 10),
                margin: const EdgeInsets.only(top: 50, bottom: 45),
                decoration: BoxDecoration(
                    color: tertiaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(100)),
                child: TextField(
                  controller: _searchController,
                  style: TextStyle(color: tertiaryColor),
                  decoration: InputDecoration(
                      hintText: "Search Item...", border: InputBorder.none),
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                    icon: Icon(
                      Icons.filter_alt_outlined,
                      color:  primaryColor
                          
                    ))
              ],
              bottom: TabBar(
                  unselectedLabelColor: tertiaryColor,
                  automaticIndicatorColorAdjustment: true,
                  labelColor: primaryColor,
                  indicatorColor: primaryColor,
                  isScrollable: true,
                  tabs: const [
                    Tab(
                      child: Text(
                        "BEST MATCH",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "TOP RATED",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "PRICE: LOW - HIGH",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "PRICE: HIGH-LOW",
                      ),
                    ),
                  ]),
            ),
            endDrawer: Container(
              margin: const EdgeInsets.only(top: 90),
              decoration: const BoxDecoration(color: whiteColor),
              width: (3 / 4) * getSize(context).width,
              height: (8 / 8) * getSize(context).height,
              child: Card(
                margin: EdgeInsets.zero,
                child: Column(
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "REFINE RESULTS",
                            style: TextStyle(
                                color: tertiaryColor.withOpacity(0.6)),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "CLEAR",
                            style: TextStyle(color: primaryColor),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "View",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: ListTile(
                                title: Text(
                                  "Thumbnails",
                                  style: TextStyle(color: tertiaryColor),
                                ),
                                trailing: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: const Color(0xff707070)
                                        .withOpacity(0.2),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 14,
                                      color: tertiaryColor,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Category",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: ListTile(
                                title: Text(
                                  "Men's Apparel",
                                  style: TextStyle(color: tertiaryColor),
                                ),
                                trailing: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: const Color(0xff707070)
                                        .withOpacity(0.2),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 14,
                                      color: tertiaryColor,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Condition",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: ListTile(
                                title: Text(
                                  "Brand New",
                                  style: TextStyle(color: tertiaryColor),
                                ),
                                trailing: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: const Color(0xff707070)
                                        .withOpacity(0.2),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 14,
                                      color: tertiaryColor,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Material",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: ListTile(
                                title: Text(
                                  "Cotton",
                                  style: TextStyle(color: tertiaryColor),
                                ),
                                trailing: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: const Color(0xff707070)
                                        .withOpacity(0.2),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 14,
                                      color: tertiaryColor,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Color",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: ListTile(
                                title: Text(
                                  "Colors",
                                  style: TextStyle(color: tertiaryColor),
                                ),
                                trailing: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: const Color(0xff707070)
                                        .withOpacity(0.2),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 14,
                                      color: tertiaryColor,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Brand",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: ListTile(
                                title: Text(
                                  "All Brands",
                                  style: TextStyle(color: tertiaryColor),
                                ),
                                trailing: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: const Color(0xff707070)
                                        .withOpacity(0.2),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 14,
                                      color: tertiaryColor,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Size",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: ListTile(
                                title: Text(
                                  "Large",
                                  style: TextStyle(color: tertiaryColor),
                                ),
                                trailing: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: const Color(0xff707070)
                                        .withOpacity(0.2),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 14,
                                      color: tertiaryColor,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Price Range",
                                style: TextStyle(
                                    color: tertiaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: ListTile(
                                title: Text(
                                  "\$0 - \$30",
                                  style: TextStyle(color: tertiaryColor),
                                ),
                                trailing: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: const Color(0xff707070)
                                        .withOpacity(0.2),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      size: 14,
                                      color: tertiaryColor,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        heightSpace,
                        heightSpace,
                        ElevatedButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(8)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  primaryColor),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Visibility(
                                  visible: true,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 16,
                                      color: Colors.transparent,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "APPLY FILTERS",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold),
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
                      ],
                    ),
                  )
                ]),
              ),
            ),
            body: TabBarView(
                physics: const BouncingScrollPhysics(),
                dragStartBehavior: DragStartBehavior.down,
                children: [
                  GridView(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    children: [
                      GestureDetector(
                        onTap: () {
                          push(context: context, destination: const Product());
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.all(10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Center(
                                      child: Image(
                                          image: AssetImage(
                                              "assets/images/scarf.png"))),
                                  heightSpace,
                                  Text(
                                    "V Neck T-Shirt - Pink",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: tertiaryColor.withOpacity(0.9)),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$24.99",
                                          style:
                                              TextStyle(color: tertiaryColor),
                                        ),
                                        Chip(
                                            backgroundColor: primaryColor,
                                            avatar: const Icon(
                                              Icons.star,
                                              color: whiteColor,
                                              size: 14,
                                            ),
                                            label: const Text("4.8",
                                                style: TextStyle(
                                                    color: whiteColor)))
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Center(
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/scarf.png"))),
                                heightSpace,
                                Text(
                                  "V Neck T-Shirt - Pink",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: tertiaryColor.withOpacity(0.9)),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$24.99",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      Chip(
                                          backgroundColor: primaryColor,
                                          avatar: const Icon(
                                            Icons.star,
                                            color: whiteColor,
                                            size: 14,
                                          ),
                                          label: const Text("4.8",
                                              style:
                                                  TextStyle(color: whiteColor)))
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Center(
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/scarf.png"))),
                                heightSpace,
                                Text(
                                  "V Neck T-Shirt - Pink",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: tertiaryColor.withOpacity(0.9)),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$24.99",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      Chip(
                                          backgroundColor: primaryColor,
                                          avatar: const Icon(
                                            Icons.star,
                                            color: whiteColor,
                                            size: 14,
                                          ),
                                          label: const Text("4.8",
                                              style:
                                                  TextStyle(color: whiteColor)))
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Center(
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/scarf.png"))),
                                heightSpace,
                                Text(
                                  "V Neck T-Shirt - Pink",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: tertiaryColor.withOpacity(0.9)),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$24.99",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      Chip(
                                          backgroundColor: primaryColor,
                                          avatar: const Icon(
                                            Icons.star,
                                            color: whiteColor,
                                            size: 14,
                                          ),
                                          label: const Text("4.8",
                                              style:
                                                  TextStyle(color: whiteColor)))
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Center(
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/scarf.png"))),
                                heightSpace,
                                Text(
                                  "V Neck T-Shirt - Pink",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: tertiaryColor.withOpacity(0.9)),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$24.99",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      Chip(
                                          backgroundColor: primaryColor,
                                          avatar: const Icon(
                                            Icons.star,
                                            color: whiteColor,
                                            size: 14,
                                          ),
                                          label: const Text("4.8",
                                              style:
                                                  TextStyle(color: whiteColor)))
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Center(
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/scarf.png"))),
                                heightSpace,
                                Text(
                                  "V Neck T-Shirt - Pink",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: tertiaryColor.withOpacity(0.9)),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$24.99",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      Chip(
                                          backgroundColor: primaryColor,
                                          avatar: const Icon(
                                            Icons.star,
                                            color: whiteColor,
                                            size: 14,
                                          ),
                                          label: const Text("4.8",
                                              style:
                                                  TextStyle(color: whiteColor)))
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Center(
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/scarf.png"))),
                                heightSpace,
                                Text(
                                  "V Neck T-Shirt - Pink",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: tertiaryColor.withOpacity(0.9)),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$24.99",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      Chip(
                                          backgroundColor: primaryColor,
                                          avatar: const Icon(
                                            Icons.star,
                                            color: whiteColor,
                                            size: 14,
                                          ),
                                          label: const Text("4.8",
                                              style:
                                                  TextStyle(color: whiteColor)))
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Center(
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/scarf.png"))),
                                heightSpace,
                                Text(
                                  "V Neck T-Shirt - Pink",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: tertiaryColor.withOpacity(0.9)),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "\$24.99",
                                        style: TextStyle(color: tertiaryColor),
                                      ),
                                      Chip(
                                          backgroundColor: primaryColor,
                                          avatar: const Icon(
                                            Icons.star,
                                            color: whiteColor,
                                            size: 14,
                                          ),
                                          label: const Text("4.8",
                                              style:
                                                  TextStyle(color: whiteColor)))
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                ]),
          ),
        ));
  }
}
