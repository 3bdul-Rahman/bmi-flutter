import 'package:flutter/material.dart';
import 'package:task/main.dart';

// ignore: camel_case_types
class Inkwel_m extends StatefulWidget {
  const Inkwel_m({super.key});
  @override
  State<Inkwel_m> createState() => _Inkwel_mState();
}

// ignore: camel_case_types
class _Inkwel_mState extends State<Inkwel_m> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          children: [
            InkWell(
              onTap: () {
                gender = 'Male';
                setState(() {});
              },
              child: Container(
                width: constraints.maxWidth * .43, //170
                height: constraints.maxHeight * .9, //200
                margin: const EdgeInsets.fromLTRB(15, 15, 10, 10),
                decoration: BoxDecoration(
                    color: gender == 'Male' ? activecolor : inactivecolor,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.male,
                      size: 80,
                      color: Colors.white,
                    ),
                    Text(
                      'Male',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(117, 255, 255, 255)),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                gender = 'Female';
                setState(() {});
              },
              child: Container(
                width: constraints.maxWidth * .43,
                height: constraints.maxHeight * .9,
                margin: EdgeInsets.fromLTRB(10, 15, 15, 10),
                decoration: BoxDecoration(
                    color: gender == 'Female' ? activecolor : inactivecolor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.female,
                      size: 80,
                      color: Colors.white,
                    ),
                    Text(
                      'Female',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(117, 255, 255, 255)),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
