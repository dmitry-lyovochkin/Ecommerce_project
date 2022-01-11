import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  CarouselWidget({Key? key}) : super(key: key);

  final List<String> imageList = [
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: CarouselSlider.builder(
        itemCount: imageList.length,
        options: CarouselOptions(
          height: 183,
          aspectRatio: 5.0,
          initialPage: 0,
          viewportFraction: 1,
        ),
        itemBuilder: (context, i, id) {
          return GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  imageList[i],
                  width: 700,
                  fit: BoxFit.cover,
                ),
              ),
            
            // onTap: () {
            //   var url = imageList[i];
            //   print(url.toString());
            // },
          );
        },
      ),
    );
  }
}
