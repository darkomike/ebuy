import 'package:ecommerce/styles/colors.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Padding(
             padding: const EdgeInsets.only(left:20.0),
             child: Text( 
                "More",
                style: TextStyle(
                    color: tertiaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
           ),
          Card(
            elevation: 2 ,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.notifications,
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
                    "Notification Settings",
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
                    Icons.shield_outlined,
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
                    "Privacy Policy",
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
                    Icons.chat_sharp,
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
                    "Frequently Asked Questions",
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
                    Icons.document_scanner_rounded,
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
                    "Legal Information",
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
                    Icons.notifications,
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
                    "Notification Settings",
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
                    Icons.shield_outlined,
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
                    "Privacy Policy",
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
                    Icons.chat_sharp,
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
                    "Frequently Asked Questions",
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
                    Icons.document_scanner_rounded,
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
                    "Legal Information",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: tertiaryColor),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "LOG OUT",
                  style:
                      TextStyle(color: primaryColor, fontWeight: FontWeight.w500),
                )),
          )
        ]),
      ),
    );
  }
}
