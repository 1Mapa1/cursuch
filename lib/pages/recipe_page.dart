import 'package:flutter/material.dart';
import '../componets/bars.dart';
import '../componets/mini_recipes.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
       body: ListView(
        children: [
          CategoryAppBar(
            height: height,
            text: "Блины"),
          Container(
            margin: const EdgeInsets.only(right: 30, left: 30),
            height: height * 0.815,
            child: ListView.builder(
              itemCount: 10,              
              itemBuilder: (BuildContext context, int index,)
              {
                return MiniRepice(height: height, width: width);
              },            
            ),
          ),
        ],
       ),
       bottomNavigationBar: BottomBar(
        height: height,
        barPath: 0,        
        ),
    );
  }
}