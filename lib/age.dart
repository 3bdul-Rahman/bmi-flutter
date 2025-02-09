import 'package:flutter/material.dart';
import 'package:task/main.dart';

class Age extends StatefulWidget {
  const Age({super.key});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  onpressed_pos() {
    setState(() {
      age++;
    });
  }

  onpressed_min() {
    setState(() {
      if (age > 0) {
        age--;
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
          margin: const EdgeInsets.fromLTRB(10, 5, 15, 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(120, 72, 107, 136)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Age',
                style: TextStyle(
                    fontSize: 25, color: Color.fromARGB(117, 255, 255, 255)),
              ),
              Text(
                age.toString(),
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
                        fixedSize: const Size(5, 60),
                      ),
                      onPressed: onpressed_min,
                      child: const Text(
                        '-',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(110, 255, 255, 255),
                      shape: const CircleBorder(),
                      fixedSize: const Size(5, 60),
                    ),
                    onPressed: onpressed_pos,
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
