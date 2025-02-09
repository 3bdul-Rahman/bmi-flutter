import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/age.dart';
import 'package:task/inkwell_m.dart';
import 'package:task/resultbutton.dart';
import 'package:task/slider.dart';
import 'package:task/weight.dart';

// ignore: must_be_immutable
class Calc extends StatelessWidget {
  Calc(this.onpressed, {super.key});
  void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: Color.fromARGB(255, 41, 43, 68)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              textAlign: TextAlign.center,
              'BMI Calculator',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(child: Inkwel_m()),
            const Expanded(child: Sliderr()),
            const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Weight()),
                  Expanded(child: Age()),
                ],
              ),
            ),
            Resultbutton(onpressed, 'Calculate')
          ],
        ));
  }
}
