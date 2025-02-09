import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Resultbutton extends StatelessWidget {
  Resultbutton(this.onpressed, this.text, {super.key});
  void Function() onpressed;
  final text;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth * .95,
          height: 90,
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 238, 84, 135),
            ),
            onPressed: onpressed,
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        );
      },
    );
  }
}
