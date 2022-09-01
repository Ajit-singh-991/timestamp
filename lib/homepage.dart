// ignore_for_file: unnecessary_string_interpolations, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:timestamp/date.dart';
import 'package:timestamp/week.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> selectionType = ["Days", "Weeks", "Months"];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.purple600,
      body: Stack(
        children: [
          "Every Week".text.bold.xl5.white.make().p16().py12(),
          DateTime.now()
              .timeAgo()
              .richText
              .bold
              .xl3
              .white
              .make()
              .p20()
              .py32()
              .py16(),
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                height: 60,
                width: 200,
                child: Center(
                  child: Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                        color: Vx.purple400,
                        borderRadius: BorderRadius.circular(6.0)),
                    child: const Text(
                      "Every",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Vx.white,
                      ),
                      textAlign: TextAlign.left,
                    ).p16(),
                  ),
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                child: ListWheelScrollView.useDelegate(
                  itemExtent: 50,
                  perspective: 0.005,
                  onSelectedItemChanged: (val) {
                    debugPrint("selected val $val");
                  },
                  physics: const FixedExtentScrollPhysics(),
                  diameterRatio: 1.2,
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: count,
                    builder: (context, index) {
                      return Mydate(
                        mins: index + 1,
                      );
                    },
                  ),
                ),
              ).px64().py16(),
              Container(
                width: 130,
                child: ListWheelScrollView.useDelegate(
                  itemExtent: 50,
                  perspective: 0.005,
                  onSelectedItemChanged: (val) {
                    debugPrint("selected val $val");
                    setState(() {
                      if (val == 0) {
                        count = 31;
                      } else if (val == 1) {
                        count = 7;
                      } else {
                        count = 12;
                      }
                    });
                  },
                  physics: const FixedExtentScrollPhysics(),
                  diameterRatio: 1.2,
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 3,
                    builder: (context, index) {
                      return MyWeek(
                        days: "${selectionType[index]}",
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
