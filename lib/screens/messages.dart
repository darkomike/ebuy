import 'package:ecommerce/screens/message_detail.dart';
import 'package:ecommerce/styles/colors.dart';
import 'package:ecommerce/utils/constant.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.clear,
                color: primaryColor,
              ))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Messages",
              style: TextStyle(
                  color: tertiaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            heightSpace,
            GestureDetector(
              onTap: () {},
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
            const MessageCard(),
            const MessageCard(),
            const MessageCard(),
            const MessageCard(),
            const MessageCard(),
            const MessageCard(),
            const MessageCard(),
          ]),
        ),
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        push(context: context, destination: const MessageDetail());
      },
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            child: Text("SS"),
          ),
          widthSpace,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Smiley's Store",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: tertiaryColor),
                    ),
                    Text(
                      "9:20",
                      style: TextStyle(
                          fontSize: 15, color: tertiaryColor.withOpacity(0.5)),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Wrap(
                        children: [
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean posuere sem congue bibendum",
                            style: TextStyle(
                                fontSize: 15,
                                color: tertiaryColor.withOpacity(0.5)),
                          ),
                        ],
                      ),
                    ),
                    widthSpace,
                    Card(
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
                  ],
                ),
                const Divider(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
