import 'package:ecommerce/screens/index.dart';
import 'package:ecommerce/screens/signin.dart';
import 'package:ecommerce/styles/colors.dart';
import 'package:ecommerce/utils/constant.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _usernameEmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: whiteColor,
      body: Container(
        padding: EdgeInsets.only(
            left: 10, right: 10, top: (1 / 13) * getSize(context).height),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               
                Text(
                  "Forgot Password",
                  style: TextStyle(
                      color: tertiaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                 GestureDetector(
                  onTap: (){
                     push( direction: AxisDirection.down ,
                        context: context, destination: const SignIn());
                  },
                   child: Text(
                     "Log In",
                     style: TextStyle(
                       color: tertiaryColor.withOpacity(0.1),
                         fontSize: 30,
                         fontWeight: FontWeight.bold),
                   ),
                 ),
              ],
            ),
              SizedBox(
              height: (1 / 19) * getSize(context).height,
            ),
             Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                     "Enter the email address you used to create your account and we will email you a link to reset your password. ",
                        style: TextStyle(color: tertiaryColor, fontSize: 18),
                       )),
              ),
            
            SizedBox(
              height: (1 / 20) * getSize(context).height,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              shadowColor: tertiaryColor,
              color: whiteColor,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _usernameEmailController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          label: Text(
                            "EMAIL",
                            style: TextStyle(
                                color: tertiaryColor.withOpacity(0.7),
                                fontSize: 16),
                          ),
                          prefixIcon: const Icon(Icons.person_outline),
                          hintText: 'example123',
                          border: InputBorder.none),
                    ),
                    
                  ],
                ),
              ),
            ),
            heightSpace,
            heightSpace,
            ElevatedButton(
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
                      "SEND EMAIL",
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
           
           
          ],
        ),
      ),
    );
  }
}
