import 'package:ecommerce_project/common/app_colors/app_colors.dart';
import 'package:ecommerce_project/features/cart/presentation/pages/cart_page.dart';
import 'package:ecommerce_project/features/product/presentation/bloc/details_bloc.dart';
import 'package:ecommerce_project/features/product/presentation/bloc/details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonsDetailWidget extends StatefulWidget {
  const ButtonsDetailWidget({
    Key? key, 
  }) : super(key: key);

  @override
  State<ButtonsDetailWidget> createState() => _ButtonsDetailWidgetState();
}
class _ButtonsDetailWidgetState extends State<ButtonsDetailWidget> {

  int selectedButtonColor = 0;
  int selectedButtonNum = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsBloc, DetailsState>(
      builder: (context, state) {
        if (state is DetailsLoadingState) {
          return const Center( 
            child: CircularProgressIndicator(),
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
                          Icons.check_outlined,
                          ) 
                        : const SizedBox(),
                      backgroundColor: colorFromApi(state.loadedDetails[0].color[0]),
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
                      backgroundColor: colorFromApi(state.loadedDetails[0].color[1]),
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
                        })
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
                        })
                    },
                    style: ElevatedButton.styleFrom(
                      primary: selectedButtonNum == 1 ? AppColors.iconColor : Colors.white,
                      elevation: 0,
                      padding: const EdgeInsets.all(5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const CartWidget()
                  //   ),
                  // );
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
            child: Text('Error getcing details'),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}