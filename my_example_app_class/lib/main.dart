import 'package:flutter/material.dart';
import 'package:my_example_app_class/content_screen.dart';
import 'package:my_example_app_class/home_screen.dart';
import 'package:my_example_app_class/login_screen.dart';
import 'package:my_example_app_class/example_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomeScreen(),
        "/login": (context) => LoginScreen(),
        "/content": (context) => ContentScreen(),
        "/example": (context) => ExampleWidget(),
      },
    );
  }
}
