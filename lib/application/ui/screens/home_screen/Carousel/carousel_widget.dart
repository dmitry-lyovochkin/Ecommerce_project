import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/application/API/api/api_list.dart';
import 'package:ecommerce_project/application/API/api/http.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HotSalesWidget extends StatefulWidget {
  const HotSalesWidget({Key? key}) : super(key: key);

  @override
  _HotSalesWidgetState createState() => _HotSalesWidgetState();
}

class _HotSalesWidgetState extends State<HotSalesWidget> {
// Написать сюда модельку(рефакторинг возможно как у Жени)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder(
          future: getPosts(),
          builder: (context, snapshot) {
            if (snapshot.hasData){
              return CarouselSlider.builder(
                itemCount: (snapshot.data as List<Home_store>).length, 
                itemBuilder: (context, index, _) => 
                  NewWidget(pictureUrl: (snapshot.data as List<Home_store>)[index].picture),
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 5.0,
                  initialPage: 0,
                  viewportFraction: 1,
                ),
             );
            } else {
              return const SizedBox.shrink();                
            }
          }
        )
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String pictureUrl;
  const NewWidget({
    Key? key,
    required this.pictureUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20.0, left: 20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(pictureUrl),
            fit: BoxFit.fitHeight,
          ),
        ));
  }
}
