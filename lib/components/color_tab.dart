import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorTab extends StatelessWidget {
  Color color;
  void Function()? onTap;
  bool isSelect;
  ColorTab(
      {super.key,
      required this.color,
      required this.onTap,
      required this.isSelect});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 61,
        height: 41,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          border: Border.all(
              color: isSelect ? Colors.grey.shade300 : Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
