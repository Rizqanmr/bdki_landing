import 'package:bdki_landing/themes/colors.dart';
import 'package:bdki_landing/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ButtonMenuContainer extends StatelessWidget {
  final String assetPath;
  final String nameMenu;
  ButtonMenuContainer({required this.assetPath, required this.nameMenu});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            width: 68.0,
            height: 62.0,
            decoration: BoxDecoration(
              color: pink,
              borderRadius: BorderRadius.circular(8.0),
              border: const GradientBoxBorder(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.yellow, lightRed]
                  ),
                  width: 2
              ),
            ),
            child: Image.asset(assetPath),
          ),
          const SizedBox(height: 8,),
          Text(nameMenu, style: extraSmall, textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
