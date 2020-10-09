import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F7),
        borderRadius: BorderRadius.circular(40)
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/search.svg'),
          SizedBox(width: 10,),
          Text("Search for anything",style: TextStyle(color: Color(0xFFA0A5BD)),)
        ],
      ),
    );
  }
}
