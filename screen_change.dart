import 'package:flutter/material.dart';
import 'package:my_app01/GradientContainer.dart';
import 'package:my_app01/dice_roller.dart';

class ScreenChange extends StatefulWidget {
  const ScreenChange({super.key});

  @override
  State<ScreenChange> createState() => _ScreenChangeState();
}

class _ScreenChangeState extends State<ScreenChange> {
  var currentScreen = "home";

  void changeScreen() {
    setState(() {
      currentScreen = "screen-two";
      //maine current screen ki value screen two krdi so
      //neeche if else me home nhi hoga to else wala retrun rk dega vo
      //i.e screenTwo() function call ho jayegas
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentScreen == "home") {
      return GradientContainer(changeScreen, const [
        Colors.cyan,
        Colors.pink, 
        Colors.orange,
      ]);
    }
    return const diceRoller();
  }
}
