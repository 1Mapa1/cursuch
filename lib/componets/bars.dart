import 'package:flutter/material.dart';
import 'package:cursuch/componets/svg_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.height,
    required this.barPath
  });

  final double height;
  final int barPath;

  @override
  Widget build(BuildContext context) {
    return Container(
       height: height * 0.07,
       color: const Color.fromARGB(255, 0, 130, 9),
       padding: const EdgeInsets.only(left: 10, right: 10),
       child: Row(
         children: [
           Expanded(
             flex: 1,
             child: SvgButtonBottomBar(
              path: barPath == 1 ? 'assets/svg/heart_white.svg' : 'assets/svg/heart_black.svg', 
              height: 25, 
              width: 25),
           ),
           Expanded(
             flex: 1,
             child: SvgButtonBottomBar(
              path: barPath == 2 ? 'assets/svg/home_white.svg' : 'assets/svg/home_black.svg',
              height: 25, 
              width: 25),
           ),
           Expanded(
             flex: 1,
             child: SvgButtonBottomBar(
              path: barPath == 3 ? 'assets/svg/plus_white.svg' : 'assets/svg/plus_black.svg',
              height: 25, 
              width: 25),
           ),
         ],
       )
     );
  }
}

class CategoryAppBar extends StatelessWidget {
  const CategoryAppBar({
    super.key,
    required this.height,
    required this.text
  });

  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.075,
      padding: const EdgeInsets.only(left: 20, top: 5),
      child: Row(
        children: [
          const SvgButtonBottomBar(
            path: 'assets/svg/errow.svg', 
            height: 23, 
            width: 23),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ) 
      
    );
  }
}


