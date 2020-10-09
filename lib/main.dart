import 'package:elearn/Screens/Login/login_screen.dart';
import 'package:elearn/providers/categoriesProvider.dart';
import 'package:elearn/providers/coursesProvider.dart';
import 'package:elearn/providers/pageProvider.dart';
import 'package:flutter/material.dart';
import 'package:elearn/constants.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: PageProvider()),
        ChangeNotifierProvider.value(value: CategoriesProvider()),
        ChangeNotifierProvider.value(value: CoursesProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Auth',
        theme: ThemeData(
          primaryColor: kPrimaryLightColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
