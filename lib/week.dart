// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyWeek extends StatelessWidget {
  int days;
  MyWeek({required this.days});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(
            days.toString(),
            style: const TextStyle(
              fontSize: 40,
              color: Vx.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
