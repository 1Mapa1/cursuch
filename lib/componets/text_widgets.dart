import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    required this.textStyle
  });

  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle
    );
  }
}

class MiddleTextRecipe extends StatelessWidget {
  const MiddleTextRecipe({
    super.key,
    required this.firstText,
    required this.secondText
  });

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Container( 
      margin: EdgeInsets.only(top: 10), 
      child: Row(
        children: [
          Text("$firstText: ", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
          Text(secondText, style: TextStyle(color: Color.fromARGB(255, 0, 130, 9), fontSize: 18,  fontWeight: FontWeight.w600),)
        ],
      )
    );
  }
}
