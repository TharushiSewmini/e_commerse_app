import 'package:e_commerse_app/components/color_tab.dart';
import 'package:flutter/material.dart';

class ColorPallete extends StatefulWidget {
  const ColorPallete({super.key});

  @override
  State<ColorPallete> createState() => _ColorPalleteState();
}

class _ColorPalleteState extends State<ColorPallete> {
  var colorValuesList = [
    ColorValue(colorValue: Color(0xffF5E3DF), isSelect: false),
    ColorValue(colorValue: Color(0xffECECEC), isSelect: false),
    ColorValue(colorValue: Color(0xffE4F2DF), isSelect: false),
    ColorValue(colorValue: Color(0xffD5E0ED), isSelect: false),
    ColorValue(colorValue: Color(0xff3E3D40), isSelect: false),
  ];
  void onTap(int selectedIndex) {
    setState(() {
      for (int i = 0; i < colorValuesList.length; i++) {
        if (i != selectedIndex) {
          colorValuesList[i].isSelect = false; // Deselect other items
        }
      }
      colorValuesList[selectedIndex].isSelect = true; // Select the tapped item
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorValuesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 11),
              child: ColorTab(
                color: colorValuesList[index].colorValue,
                onTap: () {
                  onTap(index);
                },
                isSelect: colorValuesList[index].isSelect,
              ),
            );
          }),
    );
  }
}

class ColorValue {
  Color colorValue;
  bool isSelect;
  ColorValue({required this.colorValue, required this.isSelect});
}
