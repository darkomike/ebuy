import 'package:ecommerce/screens/index.dart';
import 'package:ecommerce/screens/search_result.dart';
import 'package:ecommerce/screens/signin.dart';
import 'package:ecommerce/styles/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ebuy',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const SignIn(),
    );
  }
}
