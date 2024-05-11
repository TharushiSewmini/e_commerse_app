import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyTextField extends StatelessWidget {
  TextEditingController controller;
  void Function(String) onChanged;
  void Function()? onTap;
  MyTextField(
      {super.key,
      required this.controller,
      required this.onChanged,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      onChanged: (value) => onChanged(value),
      cursorColor: Color(0xff67C4A7),
      decoration: InputDecoration(
          hintText: 'Search here ...',
          hintStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xffC8C8CB)),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              './assets/Search.svg',
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xffF0F2F1))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xffF0F2F1)))),
    );
  }
}
