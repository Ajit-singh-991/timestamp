import 'package:flutter/material.dart';
import 'package:timestamp/dinank.dart';
import 'package:velocity_x/velocity_x.dart';

class DinankScroll extends StatelessWidget {
  const DinankScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.purple600,
      body: ListWheelScrollView.useDelegate(
        itemExtent: 50,
        perspective: 0.005,
        onSelectedItemChanged: (val) {
          debugPrint("selected val $val");
        },
        physics: const FixedExtentScrollPhysics(),
        diameterRatio: 1.2,
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: 7,
          builder: (context, index) {
            return Mydinank(
              dins: index + 1,
            );
          },
        ),
      ),
    );
  }
}
