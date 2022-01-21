import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MyApp22 extends StatefulWidget {
  const MyApp22({Key? key}) : super(key: key);

  @override
  _MyApp22State createState() => _MyApp22State();
}

class _MyApp22State extends State<MyApp22> {
  final url = "https://jsonplaceholder.typicode.com/posts";
  var _postJson = [];

  void fetchPost() async {
    try {
      final response = await get(Uri.parse(url));
      final jsonData = jsonDecode(response.body) as List;

      setState(() {
        _postJson = jsonData;
      });
    } catch (error) {}

    @override
    void initState() {
      super.initState();
      fetchPost();
    }

    get(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:  Center(child: ElevatedButton(onPressed: (fetchPost), child: const Text("send post")),),
      ),
    );
  }
}
