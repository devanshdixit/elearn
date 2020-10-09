import 'package:elearn/Screens/HomePage/homePage.dart';
import 'package:elearn/Screens/profile/profile.dart';
import 'package:elearn/constants.dart';
import 'package:elearn/providers/pageProvider.dart';
import 'package:elearn/utils/icons_.dart';
import 'package:elearn/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading:
            SvgPicture.asset('assets/icons/menu.svg', height: 20, width: 10),
        title: Text(
          appName,
          style: subtitleStyle,
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.filter_list_rounded,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          Icons_().home,
          Icons_().favourite,
          Icons_().book,
          Icons_().profile
        ],
        activeIndex: activeIndex,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
          Provider.of<PageProvider>(context, listen: false).changeIndex(index);
        },
        backgroundColor: kPrimaryLightColor,
        inactiveColor: Colors.grey,
        activeColor: kPrimaryColor,
        iconSize: 30,
        elevation: 6,
        leftCornerRadius: 10,
        rightCornerRadius: 10,
      ),
      body: pageProvider.index == 0
          ? HomePage()
          : pageProvider.index == 1
              ? Text("Favourites")
              : pageProvider.index == 2 ? Text("My Courses") : Profile(),
    );
  }
}
