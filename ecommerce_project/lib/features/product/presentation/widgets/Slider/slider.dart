import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductSliderWidget extends StatefulWidget {
  final List<dynamic>? list;

  const ProductSliderWidget({
    Key? key, 
    required this.list  
  }) : super(key: key);

  @override
  _HotSalesWidgetState createState() => _HotSalesWidgetState();
}
class _HotSalesWidgetState extends State<ProductSliderWidget> {

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: widget.list!.length,
      itemBuilder: (context, index, _) 
        => ModelWidget(
            imagesUrl: widget.list![index].images[index],
        ),
      options: CarouselOptions(
        height: 330,
        aspectRatio: 5.0,
        initialPage: 0,
        viewportFraction: 0.74,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  } 
}

class ModelWidget extends StatelessWidget {
  final String imagesUrl;
  
  const ModelWidget({
    Key? key,
    required this.imagesUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imagesUrl),
          fit: BoxFit.fitWidth,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}