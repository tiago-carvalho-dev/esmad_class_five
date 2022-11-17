import 'package:flutter/material.dart';

class CustomButtonExample extends StatelessWidget {
  final String title;
  final Function callback;

  const CustomButtonExample({
    Key? key,
    required this.title,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(300.0),
              ))),
      onPressed: () {
        callback();
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          title,
          style: TextStyle(color: Colors.white60, fontSize: 24),
        ),
      ),
    );
  }
}
