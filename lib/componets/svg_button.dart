import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeartButton extends StatefulWidget {
  @override
  _HeartButtonState createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  bool isHeartFilled = false;
  bool klickheart = false;

  Future<void> toggleHeart() async {
    isHeartFilled = !isHeartFilled;
    // Сначала делаем увеличение
    setState(() {
      klickheart = true;
    });

    await Future.delayed(Duration(milliseconds: 300));

    // Затем уменьшаем
    setState(() {
      klickheart = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 2, end: klickheart ? 1.2 : 1),
          duration: Duration(milliseconds: 300),
          builder: (context, scale, child) {
            return Transform.scale(
              scale: scale,
              child: child,
            );
          },
          child: Ink(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(24),
            ),
            child: InkWell(
              onTap: () {
                toggleHeart();
              },
              child: SvgPicture.asset(
                isHeartFilled
                    ? 'assets/svg/heart_filled.svg'
                    : 'assets/svg/heart.svg',
                key: ValueKey<bool>(isHeartFilled),
                width: 30,
                height: 30,
              ),
            ),
          ),
        ),
      );
  }
}

class SvgButtonBottomBar extends StatelessWidget {
  SvgButtonBottomBar({
    super.key,
    required this.path,
    required this.height,
    required this.width
  });

  final String path;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(24),
      ),
      child: InkWell(
        onTap: () {
        },
        child: SvgPicture.asset(
          path,
          width: width,
          height: height,
        ),
      ),
    );
  }
}