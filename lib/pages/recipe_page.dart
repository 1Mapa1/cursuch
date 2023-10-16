import 'package:flutter/material.dart';
import 'package:cursuch/componets/svg_button.dart';
import '../componets/images.dart';
import '../componets/expancion_tile.dart';
import '../componets/text_widgets.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
       body: ListView(
        children: [
          Row(
            children: [
              const Expanded(
                flex: 1,
                child:  SvgButtonBottomBar(
                  path: 'assets/svg/errow.svg', 
                  height: 23, 
                  width: 23
                ),
              ),
              const Expanded(
                flex: 1,
                child: Center (child: Text(
                  "Блины",
                  style: TextStyle(
                    fontSize: 30
                  ),
                )
                )
              ),
              Expanded(
                flex: 1,
                child: HeartButton()
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: RecipeCarouse(width: width, images: ['assets/images/blin.jpeg', 'assets/images/blin2.jpeg', 'assets/images/blin3.jpeg'],)
          ),

          Container(
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
            child: Column(
              children: [
                MiddleTextRecipe(firstText: "Автор", secondText: "Павел Маслов",),
                MiddleTextRecipe(firstText: "Время", secondText: "~20",)
              ]
            )
          ),
          const FloatingField(
            title: "Описание",
            initiallyExpanded: true,
            text: "Это знаменитая русская еда из жареного тонкого теста. Изначально блины считались обрядовой пищей, готовились на Масленицу или на поминки. Круглая форма блинов символизировала солнце, а также жизненный круг, цикл. Со временем ритуальный смысл блинов утратили, стали печь по любому поводу. К столу блины подают с медом, маслом, вареньем. Аналоги блинов у других народов — pancakes, crepes."
          ),
          const FloatingField(
            title: "Ингредиенты",
            initiallyExpanded: false,
            text: "• мука – 100 г\n• соль – щепотка\n• яйцо – 1 шт.\n• молоко – 200 мл\n• сахар – 1 ст. л.\n• вода – 75 мл\n• масло растительное – 1 ст. л.\n• масло сливочное – для смазывания",
          ),
          const FloatingField(
            title: "Рецепт",
            initiallyExpanded: false,
            text: "Какой-то рецепт :)",
          ),
          const FloatingField(
            title: "Советы",
            initiallyExpanded: false,
            text: "Очень полезный совет :)",
          )
        ],
       ),
    );
  }
}



