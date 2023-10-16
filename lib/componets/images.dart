import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageMiniRecipe extends StatelessWidget {
  const ImageMiniRecipe({
    super.key,
    required this.height,
    required this.img
  });

  final double height;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Image(
      height: height * 0.12,
      width: double.infinity,
      fit: BoxFit.cover,
      image: AssetImage(img), 
      frameBuilder: (BuildContext context, Widget child, int? frame, bool wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        return AnimatedOpacity(
          opacity: frame == null ? 0 : 1,
          duration: const Duration(seconds: 1),
          curve: Curves.easeOut,
          child: child,
        );
      },
      
    );
  }
}

class RecipeCarouse extends StatefulWidget {
  final double width;
  final List<String> images;
  RecipeCarouse({required this.width, required this.images});

  @override
  _RecipeCarouseState createState() => _RecipeCarouseState();
}

class _RecipeCarouseState extends State<RecipeCarouse> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.images.map((image) {
            return Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // Указываем радиус скругления углов
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: widget.width * 0.75,
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        CustomIndicator(
          total: widget.images.length,
          current: _current,
        ),
      ],
    );
  }
}

class CustomIndicator extends StatelessWidget {
  final int total;
  final int current;

  CustomIndicator({required this.total, required this.current});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(total, (index) {
        return Container(
          width: 11.0,
          height: 11.0,
          margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: current == index ? Color.fromARGB(255, 0, 130, 9) : Colors.white,
            border: current == index ? null : Border.all(color: Color.fromARGB(255, 0, 130, 9), width: 2)
          ),
        );
      }),
    );
  }
}