import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchHistoryContainer extends StatelessWidget {
  String itemName;
  SearchHistoryContainer({super.key, required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset('./assets/timecircle.svg'),
                const SizedBox(
                  width: 14,
                ),
                Text(
                  itemName,
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff393F42)),
                ),
              ],
            ),
            SvgPicture.asset('./assets/close.svg'),
          ],
        ),
      ),
    );
  }
}
