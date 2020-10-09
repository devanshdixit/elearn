import 'package:elearn/Models/courses.dart';
import 'package:elearn/providers/coursesProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CourseListScreen extends StatefulWidget {
  String category;
  CourseListScreen({@required this.category});
  @override
  _CourseListScreenState createState() => _CourseListScreenState();
}

class _CourseListScreenState extends State<CourseListScreen> {
  @override
  Widget build(BuildContext context) {
    final coursesProvider = Provider.of<CoursesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(widget.category),
      ),
      body: FutureBuilder<List<Courses>>(
        future: coursesProvider.getCourses(widget.category),
        builder: (contex, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return CircularProgressIndicator();
          }
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) => Container(
              child: Text(snapshot.data[index].courseName),
            ),
          );
        },
      ),
    );
  }
}
