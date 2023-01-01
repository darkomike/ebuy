import 'package:ecommerce/screens/cart.dart';
import 'package:ecommerce/screens/index.dart';
import 'package:ecommerce/styles/colors.dart';
import 'package:ecommerce/utils/constant.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const SizedBox(),
          elevation: 0,
          backgroundColor: whiteColor,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.clear,
                  color: primaryColor,
                ))
          ]),
      body: Container(
        color: whiteColor,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Checkout",
              style: TextStyle(
                  color: tertiaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SHIPPING ADDRESS",
                      style: TextStyle(
                          color: tertiaryColor, fontWeight: FontWeight.w400),
                    ),
                    heightSpace,
                    Text(
                      "John Doe",
                      style: TextStyle(
                          color: tertiaryColor, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "No 123, Sub Street",
                      style: TextStyle(
                          color: tertiaryColor, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Main Street,",
                      style: TextStyle(
                          color: tertiaryColor, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "City Name, Province",
                      style: TextStyle(
                          color: tertiaryColor, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Country",
                      style: TextStyle(
                          color: tertiaryColor, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Card(
                  shape: const CircleBorder(),
                  shadowColor: tertiaryColor.withOpacity(0.1),
                  elevation: 3,
                  color: tertiaryColor.withOpacity(0.2),
                  child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                      )),
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1.5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PAYMENT METHOD",
                  style: TextStyle(
                      color: tertiaryColor, fontWeight: FontWeight.w400),
                ),
                heightSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Master Card ending **00",
                      style: TextStyle(
                          color: tertiaryColor, fontWeight: FontWeight.w800),
                    ),
                    Card(
                      shape: const CircleBorder(),
                      shadowColor: tertiaryColor.withOpacity(0.1),
                      elevation: 3,
                      color: tertiaryColor.withOpacity(0.2),
                      child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                          )),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ITEMS",
                  style: TextStyle(
                      color: tertiaryColor, fontWeight: FontWeight.w400),
                ),
                heightSpace,
                ListView(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    children: const [
                      CartCard(),
                      CartCard(),
                      CartCard(),
                      CartCard(),
                    ]),
              ],
            )
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: (1 / 9) * getSize(context).height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "TOTAL",
                  style: TextStyle(
                      color: tertiaryColor, fontWeight: FontWeight.w400),
                ),
                Text(
                  "\$81.57",
                  style: TextStyle(
                      color: tertiaryColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 20),
                ),
                Text(
                  "Free Domestic Shipping",
                  style: TextStyle(
                      color: tertiaryColor, fontWeight: FontWeight.w400),
                )
              ],
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
                  onPressed: () {
                    push(context: context, destination: const OrderPlaced());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "PLACE ORDER",
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

class OrderPlaced extends StatelessWidget {
  const OrderPlaced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
          leading: const SizedBox(),
          elevation: 0,
          backgroundColor: whiteColor,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.clear,
                  color: primaryColor,
                ))
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: const Color.fromARGB(255, 239, 233, 233),
              child: Icon(
                Icons.done,
                color: primaryColor,
                size: 80,
              ),
            ),
            Text(
              "Order Placed",
              style: TextStyle(
                  color: tertiaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            heightSpace,
            Text(
              "Your was successfully placed.",
              style: TextStyle(
                  color: tertiaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "For more details, check All My Orders page under Profile tab",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: tertiaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            heightSpace,
            heightSpace,
            heightSpace,
            SizedBox(
              width: getSize(context).width / 2,
              child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(primaryColor),
                  ),
                  onPressed: () {
                    pushReplace(context: context, destination: const HomePage());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "MY ORDERS",
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
