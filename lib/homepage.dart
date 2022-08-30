import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timestamp/date.dart';
import 'package:timestamp/dinankscroll.dart';
import 'package:timestamp/week.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  List<String> selectionType = ["Days", "Weeks", "years"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.purple600,
      body: Stack(
        children: [
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
                    childCount: 31,
                    builder: (context, index) {
                      return Mydate(
                        mins: index + 1,
                      );
                    },
                  ),
                ),
              ).px64().py16(),
              Container(
                width: 100,
                child: ListWheelScrollView.useDelegate(
                  itemExtent: 50,
                  perspective: 0.005,
                  onSelectedItemChanged: (val) {
                    // debugPrint("selected val $val");
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
