import 'package:elearn/Models/courses.dart';
import 'package:flutter/cupertino.dart';

class CoursesProvider extends ChangeNotifier {
  List<Courses> courses = [
    Courses(
        courseName: "The Complete 2020 Web Deveplopment Bootcamp",
        courseDescription:
            "Become a full-stack web developer with just one course. HTML, CSS, Javascript, Node, React, MongoDB and more!",
        category: "Web Design",
        createdBy: "Dr. Angela Yu",
        ratings: 4.5,
        language: "English",
        courseVideos: [
          "https://youtu.be/6mbwJ2xhgzM",
          "https://youtu.be/TeZdo8mx0gc",
          "https://youtu.be/IA8JWGP13dI",
          "https://youtu.be/EZCc_4abdcE",
          "https://youtu.be/ulv_q6-b7uI",
        ]),
    Courses(
        courseName: "The Complete 2020 Web Deveplopment Bootcamp",
        courseDescription:
            "Become a full-stack web developer with just one course. HTML, CSS, Javascript, Node, React, MongoDB and more!",
        category: "Animation",
        createdBy: "Dr. Angela Yu",
        ratings: 4.5,
        language: "English",
        courseVideos: [
          "https://youtu.be/6mbwJ2xhgzM",
          "https://youtu.be/TeZdo8mx0gc",
          "https://youtu.be/IA8JWGP13dI",
          "https://youtu.be/EZCc_4abdcE",
          "https://youtu.be/ulv_q6-b7uI",
        ]),
    Courses(
        courseName: "The Complete 2020 Web Deveplopment Bootcamp",
        courseDescription:
            "Become a full-stack web developer with just one course. HTML, CSS, Javascript, Node, React, MongoDB and more!",
        category: "Web Design",
        createdBy: "Dr. Angela Yu",
        ratings: 4.5,
        language: "English",
        courseVideos: [
          "https://youtu.be/6mbwJ2xhgzM",
          "https://youtu.be/TeZdo8mx0gc",
          "https://youtu.be/IA8JWGP13dI",
          "https://youtu.be/EZCc_4abdcE",
          "https://youtu.be/ulv_q6-b7uI",
        ]),
  ];

  Future<List<Courses>> getCourses(String category) async {
    return courses.where((element) => element.category == category).toList();
  }
}
