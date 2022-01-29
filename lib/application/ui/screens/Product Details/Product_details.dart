import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/application/API/api/http.dart';
import 'package:ecommerce_project/application/API/api/model_product.dart';
import 'package:ecommerce_project/application/ui/themes/app_theme.dart';
import 'package:ecommerce_project/application/ui/themes/custom_icons.dart';
import 'package:flutter/material.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme.light;
    return Container(
      color: Colors.grey[50],
      width: double.infinity,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(35),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios,
                      size: 19, color: Colors.white),
                  style: ElevatedButton.styleFrom(
                      primary: AppColors.buttonBarColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.all(10),
                      minimumSize: const Size(15, 15)),
                ),
                const Text('Product Details',
                    style: TextStyle(
                        fontFamily: 'MarkPronormal400',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColors.buttonBarColor,
                        decoration: TextDecoration.none)),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(
                    CustomIcons.vector,
                    color: Colors.white,
                    size: 15,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: IconColors.appColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.all(11),
                      minimumSize: const Size(15, 15)),
                )
              ]
              ),
        ),
        const ProductSliderWidget()
      ]
      ),
    );
  }
}

class ProductSliderWidget extends StatefulWidget {
  const ProductSliderWidget({Key? key}) : super(key: key);

  @override
  _HotSalesWidgetState createState() => _HotSalesWidgetState();
}

class _HotSalesWidgetState extends State<ProductSliderWidget> {
// Написать сюда модельку(рефакторинг возможно как у Жени)

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CarouselSlider.builder(
              itemCount: (snapshot.data as List<ProductDetailsModel>).length,
              itemBuilder: (context, index, _) => ModelWidget(
                  imagesUrl:
                      (snapshot.data as List)[index].images
                      ),
                  // titlePhone: (snapshot.data as List<ProductDetailsModel>)[index].title,
                  // subtitleSuper:
                  //     (snapshot.data as List<ProductDetailsModel>)[index].subtitle,
                  // isNew: (snapshot.data as List<ProductDetailsModel>)[index].is_new),
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
        });
  }
}

class ModelWidget extends StatelessWidget {
  final String imagesUrl;
  // final String titlePhone;
  // final String subtitleSuper;
  // bool isNew;
  const ModelWidget({
    Key? key,
    required this.imagesUrl,
    // required this.titlePhone,
    // required this.subtitleSuper,
    // required this.isNew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(imagesUrl),
            fit: BoxFit.cover,
            alignment: Alignment.topLeft,
          ),
        ));
  }
}
