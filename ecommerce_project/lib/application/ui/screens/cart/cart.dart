
import 'package:ecommerce_project/application/services/API/model_cart.dart';
import 'package:ecommerce_project/application/services/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_project/application/services/bloc/counter_bloc/counter_bloc.dart';
import 'package:ecommerce_project/application/services/bloc/counter_bloc/counter_event.dart';
import 'package:ecommerce_project/application/ui/theme/app_theme.dart';
import 'package:ecommerce_project/application/ui/theme/svg_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_project/application/services/bloc/cart_bloc/cart_repository.dart';
import 'package:ecommerce_project/application/services/bloc/cart_bloc/cart_event.dart';
import 'package:ecommerce_project/application/services/bloc/cart_bloc/cart_state.dart';
class CartWidget extends StatefulWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  final cartRepository = CartRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => 
        CartBloc(cartRepository)..add(CartLoadEvent()),
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
                    padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
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
                        const SizedBox(width: 150),
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
                            primary: IconColors.appColor,
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
                  const Padding(
                    padding: EdgeInsets.only(top: 50, right: 200),
                    child: Text(
                      'My Cart',
                      style: TextStyle(
                        fontFamily: 'MarkPronormal700',
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: AppColors.buttonBarColor
                      )
                    ),
                  ),
                  const SizedBox(height: 50),
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
                          padding: const EdgeInsets.only(top: 35, bottom: 130),
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Card(
                                color: AppColors.buttonBarColor/* Colors.red */,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15, bottom: 20, left: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadiusDirectional.circular(12)
                                        ),
                                        height: 90,
                                        width: 90,
                                          child:  Padding(
                                            padding: const EdgeInsets.only(top: 2, bottom: 2, left: 2, right: 12 ),
                                            child: Image.network(
                                              state.loadedCart[index].images, 
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                             Text(
                                              state.loadedCart[index].title,
                                              style: const TextStyle(
                                                fontSize: 21,
                                                fontFamily: 'MarkPronormal400',
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white
                                              ),
                                            ),
                                            const SizedBox(height: 7,),
                                             Text(
                                              '\$' + state.loadedCart[index].price.toString(),
                                              textAlign: TextAlign.start,
                                              style: const TextStyle(
                                                fontSize: 21,
                                                fontFamily: 'MarkPronormal400',
                                                fontWeight: FontWeight.w600,
                                                color: IconColors.appColor
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // const SizedBox(width: 20),
                                      Container(
                                        // margin: const EdgeInsets.only(left: 30),
                                        height: 100,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: ContainerColor.appColor,
                                          borderRadius: BorderRadiusDirectional.circular(12)
                                        ),
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: IconButton(
                                                onPressed: () => context.read<CartBloc>().add(Decrement()),
                                                icon: svgMinus,
                                              ),
                                            ),
                                            Expanded(
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Text(state.counterValue.toString(), style: const TextStyle(color: Colors.white, fontSize: 18))
                                              ),
                                            ),
                                            Expanded(
                                              child: IconButton(
                                                onPressed: () => context.read<CartBloc>().add(Increment()),
                                                icon: svgPlus
                                              ),
                                            ),
                                          ],
                                        )
                                      ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(), 
                                        primary: AppColors.buttonBarColor
                                      ), 
                                      child: SvgPicture.asset(
                                        assetCart,
                                        // color: Colors.red,
                                        height: 19,
                                      )
                                    ),
                            
                              ]
                              ),
                                )
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
                                style: const TextStyle(
                                  fontFamily: 'MarkPronormal700',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey
                                )
                              ),
                              // Text(
                              //   '\$' + state.loadedMainCart[0].total.toString() + ' us',
                              //   style: const TextStyle(
                              //     fontFamily: 'MarkPronormal700',
                              //     fontSize: 15,
                              //     fontWeight: FontWeight.w800,
                              //     color: Colors.white
                              //   )
                              // ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 65),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  const [
                              Text(
                                'Delivery',
                                style: TextStyle(
                                  fontFamily: 'MarkPronormal700',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey
                                )
                              ),
                              // Text(
                              //   state.loadedCart[0].delivery,
                              //   style: const TextStyle(
                              //     fontFamily: 'MarkPronormal700',
                              //     fontSize: 15,
                              //     fontWeight: FontWeight.w800,
                              //     color: Colors.white
                              //   )
                              // ),
                            ],
                          ),
                        ),
                        // const SizedBox(height: 20),
                        const Divider(
                          // color: Colors.grey,
                        ),
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
                            primary: IconColors.appColor,
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
  
// class CounterText extends StatelessWidget {
//   const CounterText({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final state = context.watch<CounterBloc>().state;
//     return state.when(
//       initial: () => const CircularProgressIndicator(), 
//       loading: () => const CircularProgressIndicator(), 
//       loaded: (counter) => Text('$counter', style: const TextStyle(color: Colors.red),),
//     );
//   }
}