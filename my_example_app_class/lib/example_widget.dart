import 'package:flutter/material.dart';

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Some Example textabasfjhvsadf"),
          SizedBox(
            height: 120,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Some button",
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Some button",
            ),
          )
        ],
      ),
    ));
  }
}
