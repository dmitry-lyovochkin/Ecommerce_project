import 'package:ecommerce_project/application/ui/screens/home_screen/svg_icons.dart';
import 'package:ecommerce_project/application/ui/themes/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_project/application/API/api/http.dart';
import 'package:ecommerce_project/application/API/api/model.dart';

class BestSellerWidget extends StatefulWidget {
  const BestSellerWidget({Key? key}) : super(key: key);

  @override
  State<BestSellerWidget> createState() => _BestSellerWidgetState();
}

class _BestSellerWidgetState extends State<BestSellerWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getPostsBestSeller(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              itemCount: (snapshot.data as List<Best_seller>).length,
              itemBuilder: (context, index) => GridWidget(
                pictureUrls:
                    (snapshot.data as List<Best_seller>)[index].picture,
                titleItems: (snapshot.data as List<Best_seller>)[index].title,
                priceWithoutDiscount:
                    (snapshot.data as List<Best_seller>)[index]
                        .price_without_discount,
                discountPrice: (snapshot.data as List<Best_seller>)[index]
                    .price_without_discount,
              ),
              // isFavorites:
              //     (snapshot.data as List<Best_seller>)[index].discount_price),

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // childAspectRatio: 20,
                crossAxisSpacing: 7,
                mainAxisSpacing: 7
              ),
              // scrollDirection: Axis.vertical,
              shrinkWrap: true,
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

class GridWidget extends StatelessWidget {
  // final bool isFavorites;
  final String titleItems;
  final int priceWithoutDiscount;
  final int discountPrice;
  final String pictureUrls;
  const GridWidget({
    Key? key,
    // required this.isFavorites,
    required this.titleItems,
    required this.priceWithoutDiscount,
    required this.discountPrice,
    required this.pictureUrls,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 5.5,
      // color: Colors.red,
        child: 
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      // mainAxisSize: MainAxisSize.min,
      // verticalDirection: VerticalDirection.down,
      
        Container(
          height: 170,
          width: 190,
          // padding: const EdgeInsets.symmetric(vertical: 200.0),
            decoration: BoxDecoration(
              
              // color: Colors.amberAccent,
              // borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(pictureUrls),
                fit: BoxFit.contain,
                // alignment: Alignment.topLeft,
              ),
            ),
            child:  Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                     Text(titleItems),
                      Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(5),
                          primary: Colors.white,
                          minimumSize: const Size(15,15)
                        ),
                        child: const Icon(
                          Icons.favorite_border, 
                          color: IconColors.appColor, 
                          size: 15
                        ),
                      // new Text(priceWithoutDiscount),
                      // new Text(country.capital),
                      ),
                      )
                  ],
                ),
              ],
            )
            ),
            
        );
            
      
    

    // alignment: Alignment.bottomCenter,
    // height: 230,
    // width: 230,
    // color: Colors.red,
    // margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
    // decoration: BoxDecoration(
    //   // color: Colors.amberAccent,
    //   // borderRadius: BorderRadius.circular(10),
    //   image: DecorationImage(
    //     image: NetworkImage(pictureUrls),
    //     fit: BoxFit.contain,
    //     // alignment: Alignment.topLeft,
    //   ),
    // ),
    // child: Text(titleItems,
    //     style: const TextStyle(
    //         fontFamily: 'SFPro',
    //         fontSize: 15,
    //         fontWeight: FontWeight.w800,
    //         color: Colors.black)),

    // child: Column(
    //   children: [

    //       // height: ,
    //       // width: 200,
    //        Container(
    //          height: 100,
    //          child: Column(
    //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //            children: [
    //              Text(titleItems,
    //               style: const TextStyle(
    //                 fontFamily: 'SFPro',
    //                 fontSize: 15,
    //                 fontWeight: FontWeight.w800,
    //                 color: Colors.black)),
    //            ],
    //          ),
    //        ),

    //  const Positioned(
    //   // top: 203,
    //   // left: 28,
    //   child: Text("discountPrice",
    //     style: TextStyle(
    //       fontFamily: 'SFPro',
    //       fontSize: 12,
    //       fontWeight: FontWeight.w400,
    //       color: Colors.white),
    // ),
    //  ),
    //  Positioned(
    //   top: 103,
    //   left: 28,
    //   child: Text(priceWithoutDiscount,
    //     style: TextStyle(
    //       fontFamily: 'SFPro',
    //       fontSize: 12,
    //       fontWeight: FontWeight.w400,
    //       color: Colors.white),
    // ),

    // Positioned(
    //   // top: 10,
    //   // left: 16,
    //   child: ElevatedButton(
    //     onPressed: () {},
    //     child: const Text('New',
    //       style: TextStyle(
    //         fontFamily: 'SFPro',
    //         fontSize: 11,
    //         fontWeight: FontWeight.w800,
    //         color: Colors.white
    //       )
    //     ),
    //     style: ElevatedButton.styleFrom(
    //       primary: IconColors.appColor,
    //       minimumSize: const Size(15,30),
    //       shape: const CircleBorder()
    //     ),
    //   ),
    // ),
    // Padding(
    //   padding: const EdgeInsets.all(38.0),
    //   child: ElevatedButton(
    //     onPressed: () {},
    //     child: const Text('Buy now!',
    //       style: TextStyle(
    //         fontFamily: 'SFPro',
    //         fontSize: 12,
    //         fontWeight: FontWeight.w800,
    //         color: Colors.black
    //       )
    //     ),
    //     style: ElevatedButton.styleFrom(
    //       primary: Colors.white,
    //       padding: const EdgeInsets.symmetric(horizontal: 29),
    //       minimumSize: const Size(15,25)
    //     ),
    //   ),
    // )

    //  ],
  }
}
