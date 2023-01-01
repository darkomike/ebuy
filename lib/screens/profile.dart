import 'package:ecommerce/styles/colors.dart';
import 'package:ecommerce/utils/constant.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(getImagePathJpg(name: "profile")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mike Darko",
                      style: TextStyle(
                          fontSize: 25,
                          color: tertiaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "mikedarko@gmail.com",
                      style: TextStyle(
                          color: tertiaryColor, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: getSize(context).width * (1 / 3),
                      child: TextButton(
                          style: ButtonStyle(
                              side: MaterialStateProperty.all<BorderSide>(
                                  BorderSide(color: tertiaryColor, width: 0.5)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)))),
                          onPressed: () {},
                          child: Text(
                            "EDIT PROFILE",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: tertiaryColor),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.menu,
                    color: tertiaryColor,
                  ),
                  trailing: Card(
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
                  title: Text(
                    "All My Orders",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tertiaryColor),
                  ),
                ),
                const Divider(
                  indent: 80,
                  endIndent: 30,
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_shipping,
                    color: tertiaryColor,
                  ),
                  trailing: Card(
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
                  title: Text(
                    "Pending Shipment",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tertiaryColor),
                  ),
                ),
                const Divider(
                  indent: 80,
                  endIndent: 30,
                ),
                ListTile(
                  leading: Icon(
                    Icons.payment,
                    color: tertiaryColor,
                  ),
                  trailing: Card(
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
                  title: Text(
                    "Pending Payment",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tertiaryColor),
                  ),
                ),
                const Divider(
                  indent: 80,
                  endIndent: 30,
                ),
                ListTile(
                  leading: Icon(
                    Icons.shopping_bag,
                    color: tertiaryColor,
                  ),
                  trailing: Card(
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
                  title: Text(
                    "Finished Orders",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tertiaryColor),
                  ),
                ),
              ],
            ),
          ),
      
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.send_sharp,
                    color: tertiaryColor,
                  ),
                  trailing: Card(
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
                  title: Text(
                    "Invite Friends",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tertiaryColor),
                  ),
                ),
                const Divider(
                  indent: 80,
                  endIndent: 30,
                ),
                ListTile(
                  leading: Icon(
                    Icons.headphones,
                    color: tertiaryColor,
                  ),
                  trailing: Card(
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
                  title: Text(
                    "Customer Support",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tertiaryColor),
                  ),
                ),
                const Divider(
                  indent: 80,
                  endIndent: 30,
                ),
                ListTile(
                  leading: Icon(
                    Icons.star_half_outlined,
                    color: tertiaryColor,
                  ),
                  trailing: Card(
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
                  title: Text(
                    "Rate Our App",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tertiaryColor),
                  ),
                ),
                const Divider(
                  indent: 80,
                  endIndent: 30,
                ),
                ListTile(
                  leading: Icon(
                    Icons.edit_note,
                    color: tertiaryColor,
                  ),
                  trailing: Card(
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
                  title: Text(
                    "Make a Suggestion",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tertiaryColor),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
