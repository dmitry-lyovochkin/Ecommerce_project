import 'dart:convert';

import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/http_example/models/source_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ServiceApi {
  Future<List<HomeStore>> getHome() async {
    var newsModel = null;

    final res = await get(Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
        headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['pictures'];
      List<HomeStore> newsModel =
          body.map((dynamic item) => HomeStore.fromJson(item)).toList();
      return newsModel;
    } else {
      throw Exception('Failed to load album');
    }
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ServiceApi client = ServiceApi();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("News api request"),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: client.getHome(),
            builder: (BuildContext context,
                AsyncSnapshot<List<HomeStore>> snapshot) {
              if (snapshot.hasData) {
                List<HomeStore>? pict = snapshot.data;
                return ListView.builder(
                    itemCount: pict!.length,
                    itemBuilder: (context, index) => ListTile(
                          title: Text(pict[index].title),
                        ));
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
      ),
    );
  }
}
