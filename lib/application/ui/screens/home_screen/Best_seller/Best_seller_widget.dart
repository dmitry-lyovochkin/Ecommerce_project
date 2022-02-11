import 'package:ecommerce_project/application/services/API/http_get.dart';
import 'package:ecommerce_project/application/services/API/model_store.dart';
import 'package:ecommerce_project/application/ui/screens/Product%20Details/Product_details_main.dart';
import 'package:ecommerce_project/application/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BestSellerWidget extends StatefulWidget {
  const BestSellerWidget({Key? key}) : super(key: key);

  @override
  State<BestSellerWidget> createState() => _BestSellerWidgetState();
}

class _BestSellerWidgetState extends State<BestSellerWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 138) / 2;
    final double itemWidth = size.width / 2;
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
                discountPrice:
                    (snapshot.data as List<Best_seller>)[index].discount_price,
              ),
              // isFavorites:
              //     (snapshot.data as List<Best_seller>)[index].discount_price),

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (itemWidth / itemHeight),
                // childAspectRatio: 20,
                // crossAxisSpacing: 7,
                // mainAxisSpacing: 7
              ),
              // scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
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
        margin: const EdgeInsets.all(7),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetailsWidget()),
            );
          },
          child: Stack(alignment: Alignment.topCenter, children: [
            SizedBox(
              // height: 120,
              // width: 190,
              child: Image.network(
                pictureUrls,
                height: 180,
                // width: 180,
                fit: BoxFit.cover,
                // alignment: Alignment.center,
              ),
            ),
            Positioned(
              //  top: 2,
              right: 15,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(5),
                    primary: Colors.white,
                    minimumSize: const Size(15, 15)),
                child: const Icon(Icons.favorite_border,
                    color: IconColors.appColor, size: 15),
              ),
            ),
            Positioned(
              bottom: 32,
              left: 34,
              child: Row(
                children: [
                  Text('\$' + priceWithoutDiscount.toString(),
                      style: const TextStyle(
                          fontFamily: 'MarkProbold',
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: AppColors.buttonBarColor)),
                  const SizedBox(width: 10),
                  Text('\$' + discountPrice.toString(),
                      style: TextStyle(
                          fontFamily: 'MarkPronormal400',
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[400],
                          decoration: TextDecoration.lineThrough)),
                ],
              ),
            ),
            Positioned(
              bottom: 16,
              left: 35,
              child: Text(titleItems,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                      fontFamily: 'MarkPronormal400',
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: AppColors.buttonBarColor)),
            ),

            // child:  Stack(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 15),
            //       child: Text(titleItems,
            //       style: const TextStyle(
            //            fontFamily: 'MarkPronormal400',
            //            fontSize: 10,
            //            fontWeight: FontWeight.w700,
            //            color: Colors.black
            //          )
            //          ),
            //     ),
            //           Padding(
            //           padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            //           child: ElevatedButton(
            //             onPressed: () {},
            //             style: ElevatedButton.styleFrom(
            //               shape: const CircleBorder(),
            //               padding: const EdgeInsets.all(5),
            //               primary: Colors.white,
            //               minimumSize: const Size(15,15)
            //             ),
            //             child: const Icon(
            //               Icons.favorite_border,
            //               Icons.favorite_border,
            //               Icons.favorite_border,
            //               color: IconColors.appColor,
            //               color: IconColors.appColor,
            //               color: IconColors.appColor,
            //               size: 15
            //             ),
            //           // new Text(country.capital),
            //           ),
            //           ),
            //           Padding(
            //             padding: const EdgeInsets.all(1.0),
            //             child: Text(
            //               priceWithoutDiscount.toString(),
            //               priceWithoutDiscount.toString(),
            //               priceWithoutDiscount.toString(),
            //               style: const TextStyle(
            //                 fontFamily: 'MarkPronormal400',
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.w700,
            //                 color: Colors.red
            //               )
            //               ),
            //           ),
            //           Text(
            //             discountPrice.toString(),
            //             style: const TextStyle(
            //               fontFamily: 'MarkPronormal400',
            //               fontSize: 14,
            //               fontWeight: FontWeight.w700,
            //               color: Colors.red
            //             )
            //             ),

            //       ])

            // ),
          ]),
        ));

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
