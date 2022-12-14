import 'package:ecommerce/screens/forgot_password.dart';
import 'package:ecommerce/screens/index.dart';
import 'package:ecommerce/styles/colors.dart';
import 'package:ecommerce/utils/constant.dart';
import 'package:ecommerce/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _usernameEmailController = TextEditingController();
  final _passwordController = TextEditingController();
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
                Expanded(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        color: tertiaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    push( direction: AxisDirection.right ,
                        context: context, destination: const ForgotPassword());
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: tertiaryColor.withOpacity(0.1),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
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
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _usernameEmailController,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          label: Text(
                            "USERNAME / EMAIL",
                            style: TextStyle(
                                color: tertiaryColor.withOpacity(0.7),
                                fontSize: 16),
                          ),
                          prefixIcon: const Icon(Icons.person_outline),
                          hintText: 'example123',
                          border: InputBorder.none),
                    ),
                    heightSpace,
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          label: Text(
                            "PASSWORD",
                            style: TextStyle(
                                color: tertiaryColor.withOpacity(0.7),
                                fontSize: 16),
                          ),
                          prefixIcon: const Icon(Icons.lock_outline),
                          hintText: '**********',
                          border: InputBorder.none),
                    )
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
                onPressed: () {
                   pushReplace( direction: AxisDirection.down ,
                        context: context, destination: const HomePage()); 
                },
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
                      "SIGN IN",
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
            heightSpace,
            heightSpace,
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(
                        text: "Don't have an account?  ",
                        style: TextStyle(color: tertiaryColor),
                        children: [
                      TextSpan(
                          text: "Create an account",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              push( direction: AxisDirection.right ,
                        context: context, destination: const SignUp());
                            },
                          style: TextStyle(color: primaryColor)),
                    ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
