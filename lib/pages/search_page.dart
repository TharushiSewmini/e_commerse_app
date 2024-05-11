import 'package:e_commerse_app/components/find_research_history.dart';
import 'package:e_commerse_app/components/reusable_textfield.dart';
import 'package:e_commerse_app/components/search_hitory_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchContoller = new TextEditingController();
  var searchItemsNames = [
    SearchItemText(searchText: "Iphone 12 pro max"),
    SearchItemText(searchText: "Camera fujifilm"),
    SearchItemText(searchText: "Tripod Mini"),
    SearchItemText(searchText: "Bluetooth speaker"),
    SearchItemText(searchText: "Drawing pad"),
  ];

  bool isSearchResult = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // search field area
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 14),
                child: Row(
                  children: [
                    //back button
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () => Navigator.pop(context),
                    ),
                    //search field
                    Expanded(
                        child: MyTextField(
                      controller: searchContoller,
                      onChanged: (String) {
                        setState(() {
                          isSearchResult = true;
                        });
                      },
                    )),

                    const SizedBox(
                      width: 14,
                    ),
                    //cart
                    SvgPicture.asset(
                      './assets/Buy.svg',
                      height: 28,
                      width: 28,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                  ],
                ),
              ),

              Divider(
                color: Color(0xffF0F2F1),
                height: 3,
              ),
              //last search
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isSearchResult
                        ? Text(
                            'Search result for “Earphone”',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff393F42)),
                          )
                        : Text(
                            'Last search',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xff393F42)),
                          ),
                    isSearchResult
                        ? Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 8),
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
                          )
                        : Text(
                            'Clear all',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xffD65B5B)),
                          )
                  ],
                ),
              ),
              // search result content
              isSearchResult
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: FindResuktHistory(),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: searchItemsNames.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: GestureDetector(
                            onTap: () => {
                              setState(() {
                                isSearchResult = true;
                              })
                            },
                            child: SearchHistoryContainer(
                              itemName: searchItemsNames[index].searchText,
                            ),
                          ),
                        );
                      })
            ],
          ),
        ),
      ),
    );
  }
}

class SearchItemText {
  String searchText;
  SearchItemText({required this.searchText});
}
