import 'package:flutter/material.dart';
import 'package:timestamp/date.dart';
import 'package:timestamp/week.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.purple600,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              physics: const FixedExtentScrollPhysics(),
              diameterRatio: 1.2,
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 31,
                builder: (context, index) {
                  return Mydate(
                    mins: index,
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
            width: 10,
          ),
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              physics: const FixedExtentScrollPhysics(),
              diameterRatio: 1.2,
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 7,
                builder: (context, index) {
                  return MyWeek(
                    days: index,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
