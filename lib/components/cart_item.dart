import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItem extends StatefulWidget {
  CartItemDetails cart;
    void Function()? onDeleteItem;
  CartItem({super.key, required this.cart , required this.onDeleteItem});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool isTrue = true;
  void onTapTick(bool? value) {
    setState(() {
      isTrue = !isTrue;
      widget.cart.tickBoxValue = isTrue;
    });
  }

  var currentItems = 1;
  void incrementItems() {
    setState(() {
      currentItems = currentItems + 1;
    });
  }

  void decrementItems() {
    if (!(currentItems <= 1)) {
      setState(() {
        currentItems = currentItems - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        // tick box

        children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                height: 30,
                width: 30,
                child: CupertinoCheckbox(
                    tristate: true,
                    activeColor: Color(0xff67C4A7),
                    value: isTrue,
                    onChanged: (value) => onTapTick(value)),
              )),
          Expanded(
            flex: 8,
            child: Row(
              children: [
                // image
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      width: 80,
                      height: 80,
                      // './assets/item1.png',
                      widget.cart.itemImagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // second columm
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          // 'Air pods max by apple',
                          widget.cart.itemName,
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff393F42)),
                        ),
                        Text(
                          // ,
                          widget.cart.itemColor,
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade400),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // price
                            Text(
                              '\$ ${widget.cart.itemPrice}',
                              style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff393F42)),
                            ),
                            // adding cart row

                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.grey.shade300)),
                                  child: GestureDetector(
                                    onTap: () => decrementItems(),
                                    child: Icon(
                                      Icons.remove,
                                      size: 20,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(currentItems.toString()),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.grey.shade300)),
                                  child: GestureDetector(
                                    onTap: () => incrementItems(),
                                    child: Icon(
                                      Icons.add,
                                      size: 20,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.grey.shade300)),
                                  child: GestureDetector(
                                    onTap: widget.onDeleteItem,
                                    child: Icon(
                                      Icons.delete_outline,
                                      size: 20,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartItemDetails {
  bool tickBoxValue;
  void Function(bool? value) onTapCallBack;
  String itemImagePath;
  String itemName;
  String itemColor;
  String itemPrice;

  CartItemDetails(
      {required this.itemColor,
      required this.itemImagePath,
      required this.itemName,
      required this.itemPrice,
      required this.tickBoxValue,
      required this.onTapCallBack,
     
      });
}
