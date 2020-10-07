import 'package:elearn/Screens/Login/login_screen.dart';
import 'package:elearn/providers/pageProvider.dart';
import 'package:flutter/material.dart';
import 'package:elearn/constants.dart';
import 'package:provider/provider.dart';

import 'Screens/Home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: PageProvider())],
      child: MaterialApp(
        title: 'Flutter Auth',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: Home(),
      ),
    );
  }
}
