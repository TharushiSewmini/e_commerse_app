import 'package:e_commerse_app/components/reusable_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddToCartBottomNavigation extends StatelessWidget {
  const AddToCartBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: MyButton(
                  buttonText: 'Add to Cart',
                  onClick: () {},
                  buttonColor: Color(0xff67C4A7),
                  height: 45,
                  fontColor: Colors.white),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 1,
              child: MyButton(
                  buttonText: 'Buy Now',
                  onClick: () {},
                  buttonColor: Color(0xffD9D9D9),
                  height: 45,
                  fontColor: Color(0xff393F42)),
            )
          ],
        ),
      ),
    );
  }
}
