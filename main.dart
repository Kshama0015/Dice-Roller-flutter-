import 'package:flutter/material.dart';
import 'package:my_app01/screen_change.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // GradientContainer([
        //   Color.fromARGB(255, 128, 222, 235),
        //   Color.fromARGB(255, 225, 60, 115),
        //   Color.fromARGB(255, 221, 157, 61),
        // ]),
        body: ScreenChange(),
      )));
}
