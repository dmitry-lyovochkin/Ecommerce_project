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
                pictureUrls: (snapshot.data as List<Best_seller>)[index].picture,
                titleItems: (snapshot.data as List<Best_seller>)[index].title,
                priceWithoutDiscount: (snapshot.data as List<Best_seller>)[index].price_without_discount,
                discountPrice: (snapshot.data as List<Best_seller>)[index].discount_price,
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
              MaterialPageRoute(builder: (context) => const ProductDetailsWidget()),
            );
          },
          child: Stack(
            alignment: Alignment.topCenter, 
            children: [
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
                child: const Icon(Icons.favorite_border, color: IconColors.appColor, size: 15),
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
          ]),
        ));
  }
}
