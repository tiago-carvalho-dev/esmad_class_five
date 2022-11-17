import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:my_example_app_class/custom_widgets/custom_button_example.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(120, 60),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 12,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          Positioned(
            child: Text("Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
            top: 44,
            left: 86,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60, left: 12, right: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButtonExample(
                  title: "Login",
                  callback: () {
                    setState(() {
                      isLoading = true;
                    });
                    Future.delayed(Duration(seconds: 3), () {
                      Navigator.pushReplacementNamed(context, "/content");
                    },);
                  },
                )
              ],
            ),
          ),
          if (isLoading)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  child: LoadingAnimationWidget.beat(
                      color: Colors.white, size: 80)),
            ),
        ],
      ),
    );
  }
}
