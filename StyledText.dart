import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'package:google_fonts/google_fonts.dart';
class StyledText extends StatefulWidget {
  const StyledText(this.change ,this.txt, {super.key});
  final String txt;
  final Function change;

  @override
  State<StyledText> createState() => _StyledTextState();
}

class _StyledTextState extends State<StyledText> {
  //ye function neeche k liye yha se aa rha h 
  //pr hum ise lenge screen change.dart se
  //so yha se comment out krdo
  // void changeScreen() {}

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      // Image.asset(
      //   "assets/images/flutter loho.jpg",
      //   width: 450,
      // ),
      Text(
        widget.txt,
        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      
      //button

      ElevatedButton(
        //ab dekho maine uper se vo function hta diya to
        //ab hmei vo function void screenchange leke aana h 
        //screenchange.dart se
        onPressed: (){
          widget.change();
        } ,
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        child: const Text(
          "CLICK ME",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    ]);
  }
}
