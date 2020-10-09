import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:elearn/Screens/AllCategories/allCategory.dart';
import 'package:elearn/Screens/HomePage/categoriesGrid.dart';
import 'package:elearn/Screens/HomePage/searchBar.dart';
import 'package:elearn/Screens/HomePage/topCategoriesGrid.dart';
import 'package:elearn/components/text_field_container.dart';
import 'package:elearn/constants.dart';
import 'package:elearn/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int animationDelay = 200;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 15),
          SearchBar(),
          SizedBox(height: 15),
          FadeIn(
            child: CarouselSlider(
              options: CarouselOptions(
                  height: 150.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  autoPlayAnimationDuration: Duration(seconds: 2)),
              items: [
                'assets/icons/twitter.svg',
                'assets/icons/twitter.svg',
                'assets/icons/twitter.svg',
                'assets/icons/twitter.svg',
                'assets/icons/twitter.svg'
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: kPrimaryLightColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: SvgPicture.asset(i),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          FadeIn(
            delay: Duration(milliseconds: animationDelay),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, top: 10, bottom: 10, right: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Categories", style: subtitleStyle),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AllCateries(),
                            ));
                          },
                          child: Text(
                            "Explore All",
                            style: subtitle1Style,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          FadeIn(child: CategoriesGrid(itemCount: 6,)),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, bottom: 10, right: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Top Categories", style: subtitleStyle),
                      Text(
                        "Explore All",
                        style: subtitle1Style,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          TopCategoriesGrid()
        ],
      ),
    );
  }
}
