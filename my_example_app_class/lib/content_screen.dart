import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_example_app_class/model/character.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  List<Character> content = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var url = Uri.https('rickandmortyapi.com', 'api/character');
    var response = await http.get(url);
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    var results = decodedResponse["results"] as List<dynamic>;
    var characters = results
        .map((e) => Character(
            e["id"] as int, e["name"] as String, e["image"] as String))
        .toList();
    setState(() {
      content = characters;
    });
  }

  Widget getListContent(int index) {
    Character character = content[index];
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 2,
      ),
      child: Row(
        children: [
          Image.network(character.url, height: 60),
          SizedBox(
            width: 30,
          ),
          Text(character.name)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Content Widget"),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return getListContent(index);
        },
        itemCount: content.length,
      ),
    );
  }
}
