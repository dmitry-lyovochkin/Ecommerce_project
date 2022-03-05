import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/common/app_colors/app_colors.dart';
import 'package:ecommerce_project/features/data/datasources/RemoteDataSource/homestore_remote_data_source.dart';
import 'package:ecommerce_project/features/data/models/homestore_model.dart';
import 'package:flutter/material.dart';

class HotSalesWidget extends StatefulWidget {
  const HotSalesWidget({Key? key}) : super(key: key);

  @override
  _HotSalesWidgetState createState() => _HotSalesWidgetState();
}

class _HotSalesWidgetState extends State<HotSalesWidget> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getPosts(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CarouselSlider.builder(
            itemCount: (snapshot.data as List<Homestore>).length,
            itemBuilder: (context, index, _) => SliderWidget(
              pictureUrl: (snapshot.data as List<Homestore>)[index].picture,
              titlePhone: (snapshot.data as List<Homestore>)[index].title,
              subtitleSuper: (snapshot.data as List<Homestore>)[index].subtitle,
              isNew: (snapshot.data as List<Homestore>)[index].isnew),
            options: CarouselOptions(
              height: 200,
              aspectRatio: 5.0,
              initialPage: 0,
              viewportFraction: 1,
            ),
          );
        } else if (snapshot.hasError) {
          return const Text('Error');
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    );
  }
}

class SliderWidget extends StatelessWidget {
  final String pictureUrl;
  final String titlePhone;
  final String subtitleSuper;
  bool isNew;

  SliderWidget({
    Key? key,
    required this.pictureUrl,
    required this.titlePhone,
    required this.subtitleSuper,
    required this.isNew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            imageUrl: pictureUrl,
            height: 450,
            width: double.maxFinite,
            fit: BoxFit.cover,
            alignment: Alignment.topLeft,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Stack(
            children: [
              SizedBox(
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 67),
                  child: Text((titlePhone),
                    style: const TextStyle(
                      fontFamily: 'SFPro', 
                      fontSize: 27, 
                      fontWeight: FontWeight.w800, 
                      color: Colors.white
                    )
                  ),
                ),
              ),
              Positioned(
                top: 105,
                left: 28,
                child: Text((subtitleSuper),
                  style: const TextStyle(
                    fontFamily: 'SFPro', 
                    fontSize: 12, 
                    fontWeight: FontWeight.w400, 
                    color: Colors.white
                  )
                ),
              ),
              Positioned(
                top: 10,
                left: 16,
                child: isNew != false
                  ? ElevatedButton(
                    onPressed: () {},
                    child: const Text('New',
                      style: TextStyle(
                        fontFamily: 'SFPro', 
                        fontSize: 11, 
                        fontWeight: FontWeight.w800, 
                        color: Colors.white
                      )
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.iconColor, 
                      minimumSize: const Size(15, 30), 
                      shape: const CircleBorder()
                    ),
                  )
                  : Container()
              ),
              Positioned(
                top: 130,
                left: 28,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Buy now!',
                    style: TextStyle(
                      fontFamily: 'SFPro', 
                      fontSize: 12, 
                      fontWeight: FontWeight.w800, 
                      color: Colors.black
                    )
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 29),
                    minimumSize: const Size(15, 25)
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}