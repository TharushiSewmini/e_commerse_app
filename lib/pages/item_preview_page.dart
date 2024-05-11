import 'package:e_commerse_app/components/add_cart_bottom_nav_bar.dart';
import 'package:e_commerse_app/components/color_pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemPreviewPage extends StatefulWidget {
  const ItemPreviewPage({super.key});

  @override
  State<ItemPreviewPage> createState() => _ItemPreviewPageState();
}

bool isFollow = false;

class _ItemPreviewPageState extends State<ItemPreviewPage> {
  void setFollowing() {
    print('clicked');
    setState(() {
      isFollow = !isFollow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      bottomNavigationBar: AddToCartBottomNavigation(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          'Details product',
          style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SvgPicture.asset(
              './assets/Buy.svg',
              height: 28,
              width: 28,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // item image
            Padding(
              padding: const EdgeInsets.only(bottom: 9),
              child: Image.asset(
                "./assets/appleitem.png",
                width: double.maxFinite,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),

            // ietms description row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 6),
                            child: Text(
                              'Air pods max by Apple',
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff393F42)),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '\$ 1999,99',
                                style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff393F42)),
                              ),
                              Text(
                                '  ( 219 people buy this )',
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff393F42)),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 46,
                        width: 46,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff9393931A).withOpacity(0.1)),
                        child: SvgPicture.asset('./assets/Heart.svg'),
                      )
                    ],
                  ),
                  //color pallete
                  Text('Choose the color',
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff939393))),
                  //applestore following
                  Padding(
                    padding: const EdgeInsets.only(top: 9),
                    child: ColorPallete(),
                  ),
                  //description of product
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Image.asset(
                                "./assets/apple.jpeg",
                                fit: BoxFit.cover,
                                height: 49,
                                width: 49,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Apple Store',
                                  style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff393F42)),
                                ),
                                Text(
                                  'online 12 mins ago',
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff939393)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: setFollowing,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 32),
                              decoration: BoxDecoration(
                                  color: isFollow
                                      ? Color(0xff67C4A7)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                      color: isFollow
                                          ? Colors.transparent
                                          : Color(0xffD9D9D9))),
                              child: Text('Follow',
                                  style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: isFollow
                                          ? Colors.white
                                          : Color(0xff393F42)))),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11),
                    child: Text(
                      'Description of product',
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff393F42)),
                    ),
                  ),

                  Text(
                    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet arcu id tincidunt tellus arcu rhoncus, turpis nisl sed. Neque viverra ipsum orci, morbi semper. Nulla bibendum purus tempor semper purus. Ut curabitur platea sed blandit. Amet non at proin justo nulla et. A, blandit morbi suspendisse vel malesuada purus massa mi. Faucibus neque a mi hendrerit
          Audio Technology
          Apple-designed dynamic driver
          Active Noise Cancellation
          Transparency mode
          Adaptive EQ
          Spatial audio with dynamic head tracking1
        
          Sensors
          Optical sensor (each ear cup)
          Position sensor (each ear cup)
          Case-detect sensor (each ear cup)
          Accelerometer (each ear cup)
          Gyroscope (left ear cup)
        
          Microphones
          Nine microphones total:
          Eight microphones for Active Noise Cancellation
          Three microphones for voice pickup (two shared with Active Noise Cancellation and one additional microphone)
        
          Chip
          Apple H1 headphone chip (each ear cup)
        
          Controls
          Digital Crown
          Turn for volume control
          Press once to play, pause or answer a phone call
          Press twice to skip forwards
          Press three times to skip back
          Press and hold for Siri
          Noise control button
          Press to switch between Active Noise Cancellation and Transparency mode
        
          Size and Weight2
          AirPods Max, including cushions
          Weight: 384.8g
        
          Smart Case
          Weight: 134.5g
        
          Battery
          AirPods Max
          Up to 20 hours of listening time on a single charge with Active Noise Cancellation or Transparency mode enabled3
          Up to 20 hours of movie playback on a single charge with spatial audio on4
          Up to 20 hours of talk time on a single charge5
          5 minutes of charge time provides around 1.5 hours of listening time6
          AirPods Max with Smart Case
        
          Storage in the Smart Case preserves battery charge in ultra-low-power state
          Charging via Lightning connector
        
          Connectivity
          Bluetooth 5.0
        
          In the Box
          AirPods Max
          Smart Case
          Lightning to USB-C Cable
          Documentation
          Accessibility7
          Accessibility features help people with disabilities get the most out of their new AirPods Max.
        
          Features include:
          Live Listen audio
          Headphone levels
          Headphone Accommodations
        
          System Requirements8
          iPhone and iPod touch models with the latest version of iOS
          iPad models with the latest version of iPadOS
          Apple Watch models with the latest version of watchOS
          Mac models with the latest version of macOS
          Apple TV models with the latest version of tvOS''',
                  ),

                  // bottom navigation bar add to acrt and buy
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
