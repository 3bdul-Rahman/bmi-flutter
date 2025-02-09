import 'package:flutter/material.dart';
import 'package:task/main.dart';

class Sliderr extends StatefulWidget {
  const Sliderr({super.key});

  @override
  State<Sliderr> createState() => _SliderrState();
}

class _SliderrState extends State<Sliderr> {
  //num of slider
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //double.infinity
      height: 180, //180
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(120, 72, 107, 136)),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text('Height',
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(117, 255, 255, 255))),
          const SizedBox(
            height: 5,
          ),
          Text(
            '${valslider.toStringAsFixed(1)} cm',
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
          Slider(
            value: valslider,
            onChanged: (val) {
              setState(() {
                valslider = val;
              });
            },
            max: 200,
            min: 0,
          ),
        ],
      ),
    );
  }
}
