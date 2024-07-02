import 'package:flutter/material.dart';
import 'package:my_app01/StyledText.dart';


class GradientContainer extends StatelessWidget {
  // const GradientContainer(this.color1 , this.color2 ,{super.key});
    const GradientContainer(this.goToScreenTwo,this.myColors ,{super.key});
  // final Color color1;
  // final Color color2;
  final List<Color> myColors;
  final Function goToScreenTwo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // colors: [color1 , color2]),
          colors: myColors,
      ),
    ),
    child:  Center(child: StyledText(goToScreenTwo,"HEY MENTORS!!"),),
    );
  }
}
