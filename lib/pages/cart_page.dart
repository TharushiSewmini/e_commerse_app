import 'package:e_commerse_app/components/cart_item.dart';
import 'package:e_commerse_app/components/reusable_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isTrue = true;
  List<CartItemDetails> cartItems = [
    CartItemDetails(
      itemColor: 'Variant Grey',
      itemImagePath: './assets/item1.png',
      itemName: 'Air pods max by apple',
      itemPrice: ' 1999.99',
      tickBoxValue: true,
      onTapCallBack: (bool? value) {},
    ),
    CartItemDetails(
      itemColor: 'Variant Grey',
      itemImagePath: './assets/item1.png',
      itemName: 'Air pods max by apple',
      itemPrice: ' 1999.99',
      tickBoxValue: true,
      onTapCallBack: (bool? value) {},
    ),
    CartItemDetails(
      itemColor: 'Variant Grey',
      itemImagePath: './assets/item1.png',
      itemName: 'Air pods max by apple',
      itemPrice: ' 1999.99',
      tickBoxValue: true,
      onTapCallBack: (bool? value) {},
    ),
    CartItemDetails(
      itemColor: 'Variant Grey',
      itemImagePath: './assets/item1.png',
      itemName: 'Air pods max by apple',
      itemPrice: ' 1999.99',
      tickBoxValue: true,
      onTapCallBack: (bool? value) {},
    ),
    CartItemDetails(
      itemColor: 'Variant Grey',
      itemImagePath: './assets/item1.png',
      itemName: 'Air pods max by apple',
      itemPrice: ' 1999.99',
      tickBoxValue: true,
      onTapCallBack: (bool? value) {},
    ),
    CartItemDetails(
      itemColor: 'Variant Grey',
      itemImagePath: './assets/item1.png',
      itemName: 'Air pods max by apple',
      itemPrice: ' 1999.99',
      tickBoxValue: true,
      onTapCallBack: (bool? value) {},
    ),
    CartItemDetails(
      itemColor: 'Variant Grey',
      itemImagePath: './assets/item1.png',
      itemName: 'Air pods max by apple',
      itemPrice: ' 1999.99',
      tickBoxValue: true,
      onTapCallBack: (bool? value) {},
    ),
    CartItemDetails(
      itemColor: 'Variant Grey',
      itemImagePath: './assets/item1.png',
      itemName: 'Air pods max by apple',
      itemPrice: ' 1999.99',
      tickBoxValue: true,
      onTapCallBack: (bool? value) {},
    ),
    CartItemDetails(
      itemColor: 'Variant Grey',
      itemImagePath: './assets/item1.png',
      itemName: 'Air pods max by apple',
      itemPrice: ' 1999.99',
      tickBoxValue: true,
      onTapCallBack: (bool? value) {},
    ),
    // Add your other CartItemDetails here
  ];

  void onDeleteItem(int index) {
    setState(() {
      if (cartItems.length >= 0) {
        cartItems.removeAt(index);
      } else {
        print('cannot delete');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 150,
        padding: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(color: Colors.grey.shade400, width: 0.5))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Order Summary',
                  style: GoogleFonts.inter(
                      fontSize: 18, fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Totals'), Text('\$ 219')],
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                  buttonText: 'Select Payment Method',
                  onClick: () {},
                  buttonColor: Color(0xff67C4A7),
                  height: 48,
                  fontColor: Colors.white)
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 0.3, color: Colors.grey.shade400),
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            scrolledUnderElevation: 0,
            title: Text(
              'Your Cart',
              style:
                  GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      './assets/Buy.svg',
                      height: 28,
                      width: 28,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      right: 0,
                      top: -5,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(4),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: Text(
                            cartItems.length.toString(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery To',
                    style: GoogleFonts.inter(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Salatiga City, Central Java',
                        style: GoogleFonts.inter(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      // arrow icon
                      SvgPicture.asset('./assets/arrowDown.svg'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
              height: 0.4,
            ),
            cartItems.length == 0
                ? Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Image.asset(
                      './assets/outofstock.png',
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: CartItem(
                          cart: cartItems[index],
                          onDeleteItem: () => onDeleteItem(index),
                        ),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
