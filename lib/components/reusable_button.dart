import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  String buttonText;
  void Function()? onClick;
  Color buttonColor;
  double height;
  Color fontColor;
  MyButton(
      {super.key,
      required this.buttonText,
      required this.onClick,
      required this.buttonColor,
      required this.height,
      required this.fontColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: buttonColor),
        child: Text(
          textAlign: TextAlign.center,
          buttonText,
          style: GoogleFonts.inter(
              color: fontColor, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
