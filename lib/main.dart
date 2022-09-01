import 'package:flutter/material.dart';
import 'package:timestamp/homepage.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Stamp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        backgroundColor: Vx.white,
      ),
      color: Vx.amber100,
      home: HomePage(),
    );
  }
}
