import 'package:elearn/Models/category.dart';
import 'package:flutter/material.dart';

class CategoriesProvider extends ChangeNotifier {
  List<Category> categories = [
    Category(
        categoryImage: 'assets/images/marketing.png',
        categoryName: 'Web Design',
        isTop: true,
        numberOfCourses: 18),
    Category(
      categoryImage: 'assets/images/marketing.png',
      categoryName: 'Animation',
      isTop: true,
      numberOfCourses: 17,
    ),
    Category(
      categoryImage: 'assets/images/photography.png',
      categoryName: 'Beauty',
      numberOfCourses: 10,
      isTop: true,
    ),
    Category(
        categoryImage: 'assets/images/marketing.png',
        categoryName: 'Cooking',
        isTop: true,
        numberOfCourses: 12),
    Category(
        categoryImage: 'assets/images/marketing.png',
        categoryName: 'Management',
        isTop: false,
        numberOfCourses: 14),
    Category(
        categoryImage: 'assets/images/marketing.png',
        categoryName: 'Sales & Marketing',
        isTop: false,
        numberOfCourses: 19),
    Category(
        categoryImage: 'assets/images/marketing.png',
        categoryName: 'Computer',
        isTop: false,
        numberOfCourses: 19),
  ];
}
