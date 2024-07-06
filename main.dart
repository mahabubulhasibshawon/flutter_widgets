import 'package:flutter/material.dart';
import 'package:navigation_project/pages/first_page.dart';
import 'package:navigation_project/pages/home.dart';
import 'package:navigation_project/pages/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage' : (context) => FirstPage(),
        '/homepage' : (context) => HomePage(),
        '/setttingspage'  : (context) => SettingsPage()
      },
    );
  }
}
