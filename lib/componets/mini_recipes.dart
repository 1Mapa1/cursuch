import 'package:cursuch/componets/svg_button.dart';
import 'package:flutter/material.dart';
import 'package:cursuch/componets/images.dart';
import 'package:cursuch/componets/text_widgets.dart';

class MiniRepice extends StatelessWidget {
  const MiniRepice({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 3, bottom: 7),
      child: Stack(
        children: [
          Card(
            elevation: 5, // Устанавливаем значение для тени
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Закругляем углы карты
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: ImageMiniRecipe(height: height, img: 'assets/images/blin.jpeg'),
            ),
          ),
          Container(
            height: height * 0.09,
            width: double.infinity,
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Color.fromARGB(150, 0, 130, 9),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Expanded(
                      flex: 8,
                      child:  TextWidget(text: "Блины", textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: HeartButton()
                    )
                  ]
                ),
                const SizedBox( height: 0,),
                const TextWidget(text: "• Традионный русский рецепт", textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * 0.09,
            left: width * 0.6,
            child: const TextWidget(text:  "~20 мин", textStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      )
    );
  }
}
