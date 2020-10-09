import 'package:elearn/Screens/HomePage/categoriesGrid.dart';
import 'package:elearn/providers/categoriesProvider.dart';
import 'package:flutter/material.dart';

class AllCateries extends StatefulWidget {
  @override
  _AllCateriesState createState() => _AllCateriesState();
}

class _AllCateriesState extends State<AllCateries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("Categories"),
      ),
      body: CategoriesGrid(itemCount: CategoriesProvider().categories.length,),
    );
  }
}
