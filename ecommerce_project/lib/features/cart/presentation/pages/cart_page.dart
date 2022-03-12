import 'package:ecommerce_project/features/cart/data/repositories/cart_repository.dart';
import 'package:ecommerce_project/features/cart/presentation/widgets/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ecommerce_project/common/app_colors/app_colors.dart';
import 'package:ecommerce_project/common/app_custom_icons.dart/svg_icons.dart';
import 'package:ecommerce_project/features/cart/data/repositories/basket_repository.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_event.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_state.dart';
class CartWidget extends StatefulWidget {
  const CartWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  final basketRepository = BasketRepository();
  final getCartItemsRepository = CartRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => 
        CartBloc(basketRepository, getCartItemsRepository)..add(const CartLoadEvent()),
      child: Scaffold(
        body: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
          if (state is CartLoadingState) {
            return const Center( 
              child: CircularProgressIndicator()
            );
          }
          if (state is CartLoadedState) { 
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new_sharp,
                            size: 19, 
                            color: Colors.white
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
                        const SizedBox(width: 140),
                        const Text(
                          'Add address',
                          style: TextStyle(
                            fontFamily: 'MarkPronormal400',
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: AppColors.buttonBarColor
                          )
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: SvgPicture.asset(
                            assetGeolocation,
                            color: Colors.white,
                            height: 18,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.iconColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                            minimumSize: const Size(15, 16)
                          ),
                        ),
                      ]
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'My Cart',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'MarkPronormal700',
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                          color: AppColors.buttonBarColor
                        )
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 680,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      color: AppColors.buttonBarColor,
                      borderRadius:  BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)
                      )
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 130),
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: state.loadedBasket.length,
                            itemBuilder: (context, index) {
                              return CartItemsWidget(
                                price: state.loadedBasket[index].price,
                                images: state.loadedBasket[index].images,
                                title: state.loadedBasket[index].title,
                                items: state.loadedBasket.length, 
                                delivery: state.loadedGetCartItems[0].delivery,
                              );
                            }
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 65),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              const Text(
                                'Total',
                                style:  TextStyle(
                                  fontFamily: 'MarkPronormal700',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey
                                )
                              ),
                              Text(
                                '\$' + state.finalPrice.toString() + ' us',
                                style: const TextStyle(
                                  fontFamily: 'MarkPronormal700',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white
                                )
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 65),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               const Text(
                                'Delivery',
                                style: TextStyle(
                                  fontFamily: 'MarkPronormal700',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey
                                )
                              ),
                              Text(
                                // state.loadedGetCartItems[0].delivery.toString(), 
                                'fwe',
                                style:  const TextStyle(
                                  fontFamily: 'MarkPronormal700',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white
                                )
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        const Divider(
                          color: Colors.white,
                        ),
                        const SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Checkout',
                            style: TextStyle(
                              fontFamily: 'MarkPronormal400',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: AppColors.iconColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 115),
                          ),
                        )
                      ],
                    )
                  )
                ]
              ),
            );
            }
            if (state is CartErrorState) {
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

