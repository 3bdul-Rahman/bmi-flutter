import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/home.dart';

int age = 0;
int weight = 0;
double valslider = 0.0;
String gender = '';
Color activecolor = const Color.fromARGB(76, 52, 76, 95);
Color inactivecolor = const Color.fromARGB(120, 72, 107, 136);
var cond;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp(const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
