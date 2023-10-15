import 'package:flutter/material.dart';

class SearchFild extends StatelessWidget {
  const SearchFild({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.08,
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
      child: const TextField(
        decoration: InputDecoration( 
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(color: Colors.green, width: 10),
            ),
          contentPadding: EdgeInsets.all(10),
          hintText: "Поиск",
        ),
      ),
    );
  }
}
