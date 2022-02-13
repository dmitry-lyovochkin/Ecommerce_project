import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/application/services/bloc/details_bloc.dart';
import 'package:ecommerce_project/application/services/bloc/details_event.dart';
import 'package:ecommerce_project/application/services/bloc/details_repository.dart';
import 'package:ecommerce_project/application/services/bloc/details_state.dart';
import 'package:ecommerce_project/application/ui/theme/app_theme.dart';
import 'package:ecommerce_project/application/ui/theme/custom_icons.dart';
import 'package:ecommerce_project/application/ui/theme/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailsWidget extends StatelessWidget {
  ProductDetailsWidget({Key? key}) : super(key: key);
  final detailsRepository = DetailsRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailsBloc>(
      create: (context) => DetailsBloc(detailsRepository)..add(DetailsLoadEvent()),
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
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
            const ProductSliderWidget(),
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
                          const Text(
                            'Galaxy Note 20 Ultra',
                            style: TextStyle(
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
                                borderRadius: BorderRadius.circular(10)
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 9, vertical: 7),
                              minimumSize: const Size(7, 7)
                            ),
                          )
                        ],
                      ),
                      const Icon(
                        Icons.star_outlined,
                        color: Colors.amber,
                        size: 22,
                      ),
                      MyDemo(),
                    ],
                  ),
                ),
              ),
            )
          ]
        ),
      )
    );
  }
}

class ProductSliderWidget extends StatefulWidget {
  const ProductSliderWidget({Key? key}) : super(key: key);

  @override
  _HotSalesWidgetState createState() => _HotSalesWidgetState();
}
class _HotSalesWidgetState extends State<ProductSliderWidget> {
  
  // @override
  // void initState() {
  //   super.initState();
  //   final DetailsBloc detailsBloc = BlocProvider.of<DetailsBloc>(context);
  //   detailsBloc.add(DetailsLoadEvent());
  // }

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
          return CarouselSlider.builder(
            itemCount: state.loadedDetails.length,
            itemBuilder: (context, index, _) => ModelWidget(
              imagesUrl: state.loadedDetails[index].images[index],
              // titlePhone: state.loadedDetails[index].title[index]
            ),
            options: CarouselOptions(
              height: 260,
              aspectRatio: 5.0,
              initialPage: 0,
              viewportFraction: 0.6,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
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
          fit: BoxFit.contain,
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
                  ProductWidget(),
                  Text("Details Body"),
                  Text("Features Body"),
                ]),
              )
            ],
          ),
        ));
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
        const ToggleWidget(),
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
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 49),
          ),
        ),
      ],
    );
  }
}

class ToggleWidget extends StatefulWidget {
  const ToggleWidget({
    Key? key
  }) : super(key: key);

  @override
  State<ToggleWidget> createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  bool _hasBeenPressed = false;
  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;
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
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                onPressed: () => {
                  setState(() {
                    _hasBeenPressed = !_hasBeenPressed;
                  })
                },
                color: _hasBeenPressed ? Colors.blue : Colors.black,
                icon: const Icon(Icons.circle),
                iconSize: 40,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.circle), 
                iconSize: 40,
              ),
              ElevatedButton(
                child: Text(state.loadedDetails[index].capacity[index], style: const TextStyle(color: Colors.grey),),
                onPressed: () => {
                    setState(() {
                      _hasBeenPressed1 = !_hasBeenPressed1;
                    }
                  )
                },
                style: ElevatedButton.styleFrom(
                  primary: _hasBeenPressed1 ? IconColors.appColor : Colors.white,
                  elevation: 0,
                  padding: const EdgeInsets.all(7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
              ),
              ElevatedButton(
                child: const Text('Button', style: TextStyle(color: Colors.grey),),
                onPressed: () => {
                    setState(() {
                      _hasBeenPressed2 = !_hasBeenPressed2;
                    }
                  )
                },
                style: ElevatedButton.styleFrom(
                  primary: _hasBeenPressed2 ? IconColors.appColor : Colors.white,
                  elevation: 0,
                  padding: const EdgeInsets.all(7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
              )
            ]
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