import 'package:flutter/material.dart';
import 'package:my_example_app_class/custom_widgets/custom_button_example.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 80,
              left: 0,
              right: 0,
              child: Center(
                  child: Icon(
                Icons.flutter_dash,
                size: 200,
                color: Colors.red,
              ))),
          Positioned(
            bottom: 50,
            right: 20,
            left: 20,
            child: CustomButtonExample(
              title: "Login",
              callback: () {
                Navigator.pushNamed(context, "/login");
              },
            ),
          ),
          Positioned(
              left: 20,
              right: 20,
              bottom: 120,
              child: CustomButtonExample(
                title: "Register",
                callback: () {
                  Navigator.of(context).pushNamed("/example");
                },
              ))
        ],
      ),
    );
  }
}
