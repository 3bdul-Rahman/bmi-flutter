import 'package:flutter/material.dart';
import 'package:task/main.dart';
import 'package:task/result.dart';
import 'calcpage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget? activescreen;
  @override
  void initState() {
    super.initState();
    activescreen = Calc(onpressed);
  }

  void onpressed() {
    setState(() {
      activescreen = Result(onpressedres, backbutton);
    });
  }

  void onpressedres() {
    age = 0;
    weight = 0;
    valslider = 0;
    gender = '';
    setState(() {
      activescreen = Calc(onpressed);
    });
  }

  void backbutton() {
    setState(() {
      activescreen = Calc(onpressed);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: activescreen);
  }
}
