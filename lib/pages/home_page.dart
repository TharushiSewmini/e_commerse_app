import 'package:e_commerse_app/components/botttom_navigation_bar.dart';
import 'package:e_commerse_app/components/recent_product_card.dart';
import 'package:e_commerse_app/components/reusable_textfield.dart';
import 'package:e_commerse_app/pages/cart_page.dart';
import 'package:e_commerse_app/pages/item_preview_page.dart';
import 'package:e_commerse_app/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var BannerImagePathList = [
    "./assets/banner1.svg",
    "./assets/banner2.svg",
    "./assets/banner3.svg"
  ];

  var categoryList = [
    CategoryList(type: 'Apparel', imagePath: './assets/apparels.png'),
    CategoryList(type: 'School', imagePath: './assets/school.png'),
    CategoryList(type: 'Sports', imagePath: './assets/toys.png'),
    CategoryList(type: 'Electronic', imagePath: './assets/cool.png'),
    CategoryList(type: 'All', imagePath: './assets/all.png'),
  ];
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
    // Add more products as needed
  ];

  TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: MyBottomNavigationBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // header

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Delivery address',
                            style: TextStyle(
                                fontSize: 10, color: Color(0xFFC8C8CB)),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Salatiga City, Central Java'),
                              const SizedBox(
                                width: 2,
                              ),
                              // arrow icon
                              SvgPicture.asset('./assets/arrowDown.svg')
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          // icon 01
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => CartPage())));
                            },
                            child: SvgPicture.asset(
                              './assets/Buy.svg',
                              height: 28,
                              width: 28,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          SvgPicture.asset(
                            './assets/Notification.svg',
                            height: 28,
                            width: 28,
                            fit: BoxFit.cover,
                          )
                          // icon 02
                        ],
                      )
                    ],
                  ),
                ),

                // body

                // search bar

                Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: MyTextField(
                      controller: searchController,
                      onChanged: (String) {},
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SearchPage())));
                      },
                    )),
                //banners

                Padding(
                  padding: const EdgeInsets.only(top: 26, bottom: 6),
                  child: Container(
                    height: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: BannerImagePathList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: SvgPicture.asset(BannerImagePathList[index]),
                          );
                        }),
                  ),
                ),

                // category boxes
                Text(
                  'Category',
                  style: TextStyle(
                      color: Color(0xff393F42),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),

                Container(
                  height: 80,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryList.length,
                      itemBuilder: (contex, index) {
                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(8.5),
                                    child: Image.asset(
                                        categoryList[index].imagePath)),
                                Text(categoryList[index].type)
                              ],
                            ),
                          ),
                        );
                      }),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent product',
                        style: TextStyle(
                            color: Color(0xff393F42),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color(0xffF0F2F1),
                            )),
                        child: Row(
                          children: [
                            Text(
                              'Filters',
                              style: TextStyle(
                                  color: Color(0xff393F42),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            SvgPicture.asset('./assets/filter.svg')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                GridView.builder(
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
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemPreviewPage())),
                        child: RecentCardProductCard(
                            imagePath: product.imagePath,
                            itemDescription: product.itemDescription,
                            price: product.price,
                            onClick: product.onClick),
                      );
                    })
                // navigation bar
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryList {
  String type;
  String imagePath;
  CategoryList({required this.type, required this.imagePath});
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
