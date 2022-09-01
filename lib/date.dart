// ignore_for_file: avoid_unnecessary_containers, empty_constructor_bodies, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Mydate extends StatelessWidget {
  int mins;
  Mydate({Key? key, required this.mins}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(
            mins.toString(),
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
