import 'package:e_commerse_app/components/recent_product_card.dart';
import 'package:e_commerse_app/pages/item_preview_page.dart';
import 'package:flutter/material.dart';

class FindResuktHistory extends StatefulWidget {
  const FindResuktHistory({super.key});

  @override
  State<FindResuktHistory> createState() => _FindResuktHistoryState();
}

class _FindResuktHistoryState extends State<FindResuktHistory> {
  List<Product> products = [
    Product(
      imagePath: './assets/item1.png',
      itemDescription: 'Monitor LG 22”inc 4K 120Fps',
      price: '199.99',
      onClick: () {},
    ),
    Product(
      imagePath: './assets/item2.png',
      itemDescription: 'Keyboard Mechanical RGB Backlit',
      price: '99.99',
      onClick: () {},
    ),
    Product(
      imagePath: './assets/item3.png',
      itemDescription: 'Keyboard Mechanical RGB Backlit',
      price: '59.99',
      onClick: () {},
    ),
    Product(
      imagePath: './assets/item1.png',
      itemDescription: 'Monitor LG 22”inc 4K 120Fps',
      price: '199.99',
      onClick: () {},
    ),
    Product(
      imagePath: './assets/item2.png',
      itemDescription: 'Keyboard Mechanical RGB Backlit',
      price: '99.99',
      onClick: () {},
    ),
    Product(
      imagePath: './assets/item3.png',
      itemDescription: 'Keyboard Mechanical RGB Backlit',
      price: '59.99',
      onClick: () {},
    ),
    // Add more products as needed
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ItemPreviewPage())),
            child: RecentCardProductCard(
                imagePath: product.imagePath,
                itemDescription: product.itemDescription,
                price: product.price,
                onClick: product.onClick),
          );
        });
  }
}

class Product {
  final String imagePath;
  final String itemDescription;
  final String price;
  final Function onClick;

  Product({
    required this.imagePath,
    required this.itemDescription,
    required this.price,
    required this.onClick,
  });
}
