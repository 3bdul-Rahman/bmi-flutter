import 'package:flutter/material.dart';
import 'package:task/main.dart';

// ignore: must_be_immutable
class ContainerRes extends StatelessWidget {
  ContainerRes({super.key});
  var res = (weight.toDouble() / ((valslider / 100.0) * (valslider / 100)));
  @override
  Widget build(BuildContext context) {
    if (weight > 0 && valslider > 0) {
      if (res < 16) {
        cond = 'Severe shortage';
      } else if (res < 18.5) {
        cond = 'Weight loss';
      } else if (res >= 18.5 && res <= 25) {
        cond = 'Normal';
      } else if (res > 25 && res <= 30) {
        cond = 'Weight gain';
      } else if (res > 30 && res <= 35) {
        cond = 'Light obesity first class';
      } else if (res > 35) {
        cond = 'morbid obesity';
      }
    } else {
      cond = "Error";
      res = 0;
    }
    var condcolor;
    if (res > 25 || res < 18.5) {
      condcolor = Colors.red;
    } else {
      condcolor = Colors.green;
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: double.infinity,
          height: constraints.maxHeight * .5,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: const Color.fromARGB(120, 72, 107, 136),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                cond,
                style: TextStyle(color: condcolor, fontSize: 25),
              ),
              const SizedBox(
                height: 80,
              ),
              Text(
                res.toStringAsFixed(1),
                style: const TextStyle(color: Colors.white, fontSize: 100),
              ),
            ],
          ),
        );
      },
    );
  }
}
