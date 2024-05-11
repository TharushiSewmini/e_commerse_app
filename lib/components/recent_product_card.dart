import 'package:flutter/material.dart';

class RecentCardProductCard extends StatelessWidget {
  String imagePath;
  String itemDescription;
  String price;
  Function? onClick;
  RecentCardProductCard(
      {super.key,
      required this.imagePath,
      required this.itemDescription,
      required this.price,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      decoration: BoxDecoration(
          color: Color(0xffFAFAFC), borderRadius: BorderRadius.circular(6)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          //description
          Padding(
            padding:
                const EdgeInsets.only(top: 13, right: 13, left: 13, bottom: 5),
            child: Text(
              itemDescription,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          ),
          //price
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Text('\$${price}',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
          ),
          //add to cart button
          Padding(
            padding:
                const EdgeInsets.only(bottom: 13, left: 13, right: 13, top: 11),
            child: SizedBox(
              width: 184,
              child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(0),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff67C4A7))),
                  onPressed: () => onClick,
                  child: Text(
                    'Add to cart',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
