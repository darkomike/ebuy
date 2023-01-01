import 'package:ecommerce/screens/checkout.dart';
import 'package:ecommerce/styles/colors.dart';
import 'package:ecommerce/utils/constant.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cart",
              style: TextStyle(
                  color: tertiaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const CartCard(),
            const CartCard(),
            const CartCard(),
            const CartCard(),
            const Divider(
              height: 10,
            ),
            Row(
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
                        padding: 
                            MaterialStateProperty.all(const EdgeInsets.all(8)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primaryColor),
                      ),
                      onPressed: () {
                        push(context: context, destination: const Checkout());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "CHECKOUT",
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
            )
          ],
        ),
      ),
    );
  }
}

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: CircleAvatar(
              backgroundColor: whiteColor,
              radius: 50,
              child: Image(
                  height: 100,
                  width: 100,
                  image: AssetImage(getImagePathPng(name: "women_shoes"))),
            )),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.only(left: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Faux Sued Ankle Boots",
                style: TextStyle(
                    color: tertiaryColor, fontWeight: FontWeight.w600),
              ),
              Text(
                "7, Hot Pink",
                style: TextStyle(
                    color: tertiaryColor, fontWeight: FontWeight.w400),
              ),
              Text(
                "\$49.00",
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Card(
                    shape: const CircleBorder(),
                    shadowColor: tertiaryColor.withOpacity(0.1),
                    elevation: 3,
                    color: tertiaryColor.withOpacity(0.2),
                    child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.add,
                          size: 14,
                        )),
                  ),
                  widthSpace,
                  const Text(
                    "1",
                    style: TextStyle(fontSize: 14),
                  ),
                  widthSpace,
                  Card(
                    shape: const CircleBorder(),
                    shadowColor: tertiaryColor.withOpacity(0.1),
                    elevation: 3,
                    color: tertiaryColor.withOpacity(0.2),
                    child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.add,
                          size: 14,
                        )),
                  ),
                ],
              ),
              const Divider(
                height: 10,
              )
            ]),
          ),
        )
      ],
    );
  }
}
