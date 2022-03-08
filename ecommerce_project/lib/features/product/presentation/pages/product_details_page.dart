import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/common/app_colors/app_colors.dart';
import 'package:ecommerce_project/common/app_custom_icons.dart/custom_icons.dart';
import 'package:ecommerce_project/common/app_custom_icons.dart/svg_icons.dart';
import 'package:ecommerce_project/features/cart/presentation/pages/cart_page.dart';
import 'package:ecommerce_project/features/product/data/repositories/product_details_repository.dart';
import 'package:ecommerce_project/features/product/presentation/bloc/details_bloc.dart';
import 'package:ecommerce_project/features/product/presentation/bloc/details_event.dart';
import 'package:ecommerce_project/features/product/presentation/bloc/details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final detailsRepository = ProductDetailsRepository();
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailsBloc>(
      create: (context) => 
        DetailsBloc(detailsRepository)..add(DetailsLoadEvent()),
      child: Scaffold(
        body: BlocBuilder<DetailsBloc, DetailsState>(
          builder: (context, state) { 
            if (state is DetailsLoadingState) {
              return const Center( 
                child: CircularProgressIndicator()
              );
            }
            if (state is DetailsLoadedState) { 
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 20, left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new_sharp,
                            size: 19, color: Colors.white
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.buttonBarColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            padding: const EdgeInsets.all(10),
                            minimumSize: const Size(15, 15),
                          ),
                        ),
                        const Text(
                          'Product Details',
                          style: TextStyle(
                            fontFamily: 'MarkPronormal400',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppColors.buttonBarColor,
                          )
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CartWidget()
                              ),
                            );
                          },
                          child: const Icon(
                            CustomIcons.vector,
                            color: Colors.white,
                            size: 17,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.iconColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            padding: const EdgeInsets.all(11),
                            minimumSize: const Size(15, 15)
                          ),
                        )
                      ]
                    ),
                  ),
                  ProductSliderWidget(list: state.loadedDetails),
                  const SizedBox(height: 5),
                  Container(
                    height: 450,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:  BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)
                      )
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  state.loadedDetails[0].title,
                                  style: const TextStyle(
                                    fontFamily: 'MarkPronormal400',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24, 
                                    color: AppColors.buttonBarColor
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: state.loadedDetails[0].isFavorites == true
                                    ? const Icon(Icons.favorite, color: AppColors.iconColor, size: 18)
                                    : const Icon(Icons.favorite_border, color: AppColors.iconColor, size: 15),
                                  style: ElevatedButton.styleFrom(
                                    primary: AppColors.buttonBarColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 9, vertical: 9),
                                    minimumSize: const Size(7, 7)
                                  ),
                                )
                              ],
                            ),
                            RatingBar.builder(
                              itemSize: 22,
                              initialRating: state.loadedDetails[0].rating.toDouble(),
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              ignoreGestures: true,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating1) {
                              },
                            ),
                            const SizedBox(height: 25),
                            MyDemo(),
                          ],
                        ),
                      ),
                    ),
                  
                ]
              ),
            );
            } 
            if (state is DetailsErrorState) {
              return const Center(
                child: Text('Error getcing details')
              );
            }
            return const CircularProgressIndicator();
          }
        )
      )
    );
  }
}


class ProductSliderWidget extends StatefulWidget {
  final List<dynamic> list;

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
      itemCount: widget.list.length,
      itemBuilder: (context, index, _) 
        => ModelWidget(
            imagesUrl: widget.list[index].images[index],
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
      )
    );
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
    return Expanded(
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              constraints: const BoxConstraints.expand(height: 35),
              child: TabBar(
                labelStyle: const TextStyle(
                  fontFamily: 'MarkPronormal400',
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.buttonBarColor,
                ),
                labelColor: AppColors.buttonBarColor,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: AppColors.iconColor, 
                    width: 3
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 20),
                ),
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle: const TextStyle(
                  fontFamily: 'MarkPronormal400',
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: AppColors.buttonBarColor,
                ),
                tabs: tabss,
              ),
            ),
            const SizedBox(height: 18),
            const Expanded(
              child: TabBarView(children: [
                ProductWidget(),
                Center(child: Text("Details Body")),
                Center(child: Text("Features Body")),
              ]),
            )
          ],
        ),
      )
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          assetGroup18,
          height: 90,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 10),
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
          )
        ),
        const SizedBox(height: 10),
        const ButtonsDetailWidget(),
      ]
    );
  }
}

class ButtonsDetailWidget extends StatefulWidget {
  const ButtonsDetailWidget({
    Key? key, 
  }) : super(key: key);
  @override
  State<ButtonsDetailWidget> createState() => _ButtonsDetailWidgetState();
}
class _ButtonsDetailWidgetState extends State<ButtonsDetailWidget> {
  
  Color _colorFromApi(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

  int selectedButtonColor = 0;
  int selectedButtonNum = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsBloc, DetailsState>(
      builder: (context, state) {
        if (state is DetailsLoadingState) {
          return const Center( 
            child: CircularProgressIndicator()
          );
        }
        if (state is DetailsLoadedState) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                    child: FloatingActionButton(
                      heroTag: "btn1",
                      elevation: 0,
                      child: selectedButtonColor == 0 
                        ? const Icon(
                          Icons.check_outlined
                          ) 
                        : const SizedBox(),
                      backgroundColor: _colorFromApi(state.loadedDetails[0].color[0]),
                      foregroundColor: Colors.white,
                      onPressed: () => 
                        setState(() {
                          selectedButtonColor = 0;
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: FloatingActionButton(
                      heroTag: "btn2",
                      elevation: 0,
                      child: selectedButtonColor == 1 
                        ? const Icon(
                          Icons.check_outlined
                        ) 
                        : const SizedBox(),
                      backgroundColor: _colorFromApi(state.loadedDetails[0].color[1]),
                      foregroundColor: Colors.white,
                      onPressed: () => setState(() {
                        selectedButtonColor = 1;
                      }),
                    ),
                  ),
                  const SizedBox(width: 60),
                  ElevatedButton(
                    child: Text(
                      state.loadedDetails[0].capacity[0], 
                      style: TextStyle(
                        color: selectedButtonNum == 0 ? Colors.white : Colors.grey,
                      ),
                    ),
                    onPressed: () => {
                        setState(() {
                          selectedButtonNum = 0;
                        }
                      )
                    },
                    style: ElevatedButton.styleFrom(
                      primary: selectedButtonNum == 0 ? AppColors.iconColor : Colors.white,
                      elevation: 0,
                      padding: const EdgeInsets.all(7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    child: Text(
                      state.loadedDetails[0].capacity[1], 
                      style: TextStyle(
                        color: selectedButtonNum == 1 ? Colors.white : Colors.grey,
                      ),
                    ),
                    onPressed: () => {
                        setState(() {
                          selectedButtonNum = 1;
                        }
                      )
                    },
                    style: ElevatedButton.styleFrom(
                      primary: selectedButtonNum == 1 ? AppColors.iconColor : Colors.white,
                      elevation: 0,
                      padding: const EdgeInsets.all(5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                  )
                ]
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartWidget()
                    ),
                  );
                },
                child:  Text(
                  'Add to Cart    \$' + state.loadedDetails[0].price.toString(),
                  style: const TextStyle(
                    fontFamily: 'MarkPronormal400',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.iconColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 60),
                ),
              ),
            ],
          );
        } 
        if (state is DetailsErrorState) {
          return const Center(
            child: Text('Error getcing details')
          );
        }
        return const CircularProgressIndicator();
      }
    );
  }
}