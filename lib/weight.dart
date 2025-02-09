import 'package:flutter/material.dart';
import 'package:task/main.dart';

class Weight extends StatefulWidget {
  const Weight({super.key});

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  onpressed_p() {
    setState(() {
      weight++;
    });
  }

  onpressed_m() {
    setState(() {
      if (weight > 0) {
        weight--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth * .5, //170
          height: constraints.maxHeight * .9, //190
          margin: const EdgeInsets.fromLTRB(15, 5, 10, 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(120, 72, 107, 136)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Weight',
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(117, 255, 255, 255)),
              ),
              Text(
                weight.toString(),
                style: const TextStyle(fontSize: 50, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(110, 255, 255, 255),
                        shape: const CircleBorder(),
                        fixedSize: const Size(10, 60),
                      ),
                      onPressed: onpressed_m,
                      child: const Text(
                        '-',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(110, 255, 255, 255),
                        shape: const CircleBorder(),
                        fixedSize: const Size(5, 60)),
                    onPressed: onpressed_p,
                    child: const Text(
                      '+',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
