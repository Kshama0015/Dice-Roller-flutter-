import 'dart:math';
import 'package:flutter/material.dart';

class diceRoller extends StatefulWidget {
  const diceRoller({super.key});

  @override
  State<diceRoller> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<diceRoller> {
  int currentDiceFace = 1;
  void rollDice(){
    setState(() {
      currentDiceFace = Random().nextInt(6)+1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/dice_$currentDiceFace.png",
            width: 200,
          ),
          const SizedBox(
            height: 50,
          ),
          // TextButton(onPressed: (){}, child: Text("ROLL")),
          OutlinedButton(
            onPressed: rollDice ,
            child: const Text(
              "Roll",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
