import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/container_res.dart';
import 'package:task/resultbutton.dart';

// ignore: must_be_immutable
class Result extends StatefulWidget {
  Result(this.onpressed, this.backbutton, {super.key});
  void Function() onpressed;
  void Function() backbutton;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
  }

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
            height: 40,
          ),
          Row(
            children: [
              TextButton(
                  onPressed: widget.backbutton,
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              const Text(
                'BMI Calculator',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Your Result',
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
          Expanded(child: ContainerRes()),
          const SizedBox(
            height: 30,
          ),
          Resultbutton(widget.onpressed, 'Re-Calculate')
        ],
      ),
    );
  }
}
