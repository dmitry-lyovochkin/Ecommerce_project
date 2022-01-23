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
    return Container(
        child: FutureBuilder(
            future: getPosts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return CarouselSlider.builder(
                  itemCount: (snapshot.data as List<Home_store>).length,
                  itemBuilder: (context, index, _) => NewWidget(
                      pictureUrl:
                          (snapshot.data as List<Home_store>)[index].picture),
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
            }));
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
        margin: const EdgeInsets.symmetric(horizontal: 17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(pictureUrl),
            fit: BoxFit.cover,
            alignment: Alignment.topLeft,
          ),
        ));
  }
}
