import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_project/application/API/api/http.dart';
import 'package:ecommerce_project/application/API/api/model_product.dart';
import 'package:ecommerce_project/application/ui/screens/Product%20Details/Bottom_card.dart';
import 'package:ecommerce_project/application/ui/themes/svg_icons.dart';
import 'package:ecommerce_project/application/ui/themes/app_theme.dart';
import 'package:ecommerce_project/application/ui/themes/custom_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
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
                    )),
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
              ]),
        ),
        const ProductSliderWidget(),
        // Container(
        //   height: 240,
        //   width: 200,
        //   color: Colors.blue,
        // ),
        SizedBox(
          height: 345,
          child: Card(
            color: Colors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       const Text('Galaxy Note 20 Ultra',
                          style:  TextStyle(
                            fontSize: 24, 
                            color: AppColors.buttonBarColor
                          ),
                       ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: 18,
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: AppColors.buttonBarColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 9, vertical: 7),
                            minimumSize: const Size(7, 7)),
                      )
                    ],
                  ),
                  const Icon(Icons.star_outlined, color: Colors.amber, size: 22,),
                  MyDemo(),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class ProductSliderWidget extends StatefulWidget {
  const ProductSliderWidget({Key? key}) : super(key: key);

  @override
  _HotSalesWidgetState createState() => _HotSalesWidgetState();
}

class _HotSalesWidgetState extends State<ProductSliderWidget> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
        width: 400,
      child: Card(
        elevation: 15,
          color: Colors.white,
          margin: const EdgeInsets.only(
            top: 10, 
            bottom: 10,
            left: 70,
            right: 50,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        child: FutureBuilder<List<GetDetails>>(
          future: PostsRepository().getProducts(),
          builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CarouselSlider.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index, _) => 
                  ModelWidget(imagesUrl: snapshot.data![index].images[index],
                  titlePhone: snapshot.data![index].title[index]),
              options: CarouselOptions(
                height: 220,
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
        }),
      ),
    );
  }
}

class ModelWidget extends StatelessWidget {
  final String imagesUrl;
  final String titlePhone;
  // final String subtitleSuper;
  // bool isNew;
  const ModelWidget({
    Key? key,
    required this.imagesUrl,
    required this.titlePhone,
    // required this.subtitleSuper,
    // required this.isNew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 250,
      // color: Colors.amber,
        // margin: const EdgeInsets.symmetric(horizontal: 17),
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(imagesUrl),
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
        ));
  }
}

class MyDemo extends StatelessWidget {
  List<Widget> tabss = const [
    Tab(text: "Shop"),
    Tab(text: "Details"),
    Tab(text: "Features"),
  ];

  MyDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                constraints: const BoxConstraints.expand(height: 32),
                child: TabBar(
                  labelStyle: const TextStyle(
                    fontFamily: 'MarkPronormal400',
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                    color: AppColors.buttonBarColor,
                  ),
                  labelColor: AppColors.buttonBarColor,
                  indicator: const UnderlineTabIndicator(
                    borderSide:
                        BorderSide(color: IconColors.appColor, width: 3),
                    insets: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  unselectedLabelColor: Colors.grey,
                  unselectedLabelStyle: const TextStyle(
                    fontFamily: 'MarkPronormal400',
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    color: AppColors.buttonBarColor,
                  ),
                  tabs: tabss,
                ),
              ),
              const Expanded(
                child: TabBarView(children: [
                  DetailsWidget(),
                  Text("Articles Body"),
                  Text("User Body"),
                ]),
              )
            ],
          ),
        ));
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          assetGroup18,
          height: 90,
          fit: BoxFit.contain,
        ),
        const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Select color and capacity',
              style: TextStyle(
                fontFamily: 'MarkPronormal400',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.buttonBarColor,
              ),
            )),
        const SizedBox(height: 45,),
        ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Add to Cart     \$1,500.00',
            // textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'MarkPronormal400',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: IconColors.appColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 49),
          ),
        ),
      ],
    );
  }
}
