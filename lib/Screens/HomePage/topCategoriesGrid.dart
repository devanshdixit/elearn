import 'package:elearn/providers/categoriesProvider.dart';
import 'package:elearn/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopCategoriesGrid extends StatefulWidget {
  @override
  _TopCategoriesGridState createState() => _TopCategoriesGridState();
}

class _TopCategoriesGridState extends State<TopCategoriesGrid> {
  @override
  Widget build(BuildContext context) {
    final categoriesProvider = Provider.of<CategoriesProvider>(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          itemCount: categoriesProvider
              .categories
              .where((element) => element.isTop == true)
              .length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.0),
          itemBuilder: (context, index) => Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: SweepGradient(
                          tileMode: TileMode.clamp,
                          colors: [Colors.green, Colors.greenAccent])),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          categoriesProvider.categories[index]
                              .categoryImage,
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        margin: EdgeInsets.only(left:10,top:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categoriesProvider
                                  .categories
                                  .where((element) => element.isTop == true)
                                  .toList()[index].categoryName,
                              style: subtitleStyle,
                            ),
                            Text(
                              categoriesProvider
                                  .categories[index].numberOfCourses
                                  .toString()+" courses",
                              style: TextStyle(color: Colors.black.withOpacity(0.5)),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
