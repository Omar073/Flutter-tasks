import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'ProductCard.dart';
import 'Product.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

