import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final double width;

  final double height;

  final Alignment alignmentText;

  final double vertical;
  final double horizontal;

  final double radius;

  final Color backgroundColorButton;

  final Color colorText;
  final double fontSizeText;

  final FontWeight fontWeightText;

  final String text;
  final Function onPressed;

  const DefaultButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = double.maxFinite,
    this.height = 50,
    this.alignmentText = Alignment.center,
    this.vertical = 20,
    this.horizontal = 5,
    this.radius = 0,
    this.backgroundColorButton = Colors.orangeAccent,
    this.colorText = Colors.black,
    this.fontSizeText = 20,
    this.fontWeightText = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => onPressed(),
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: vertical,
          horizontal: horizontal,
        ),
        width: width,
        height: height,
        alignment: alignmentText,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColorButton,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSizeText,
            fontWeight: fontWeightText,
            color: colorText,
          ),
        ),
      ),
    );
  }
}
