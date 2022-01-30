// import 'package:ecommerce_project/application/ui/themes/app_theme.dart';
// import 'package:flutter/material.dart';

// class BottomCardWidget extends StatelessWidget {
//   const BottomCardWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.green,
//       // decoration: const BoxDecoration(
//       //   borderRadius:  BorderRadius.only(
//       //     topLeft: Radius.circular(30.0),
//       //     topRight: Radius.circular(30.0)
//       //   )
//       // ),
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children:  [
//             // const SizedBox(height: 35),
//                 ElevatedButton(
//                   onPressed: () {}, 
//                   child: const Icon(
//                     Icons.close, 
//                     size: 18, 
//                     color: Colors.white
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     primary: AppColors.buttonBarColor ,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)
//                     ),
//                     padding: const EdgeInsets.all(10),
//                     minimumSize: const Size(15,15)
//                   ),
//                 ),
//                 const Text(
//                   'Filter options',
//                   style: TextStyle(
//                     fontFamily: 'MarkPronormal400',
//                     fontSize: 18,
//                     fontWeight: FontWeight.w700,
//                     color: AppColors.buttonBarColor
//                   )
//                 ),
//                 ElevatedButton(
//                   onPressed: () {}, 
//                   child: const Text(
//                     'Done',
//                     style: TextStyle(
//                       fontFamily: 'MarkPronormal400',
//                       fontSize: 18,
//                       fontWeight: FontWeight.w700,
//                       color: Colors.white)
//                     ),
//                   style: ElevatedButton.styleFrom(
//                     primary: IconColors.appColor ,
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)
//                     )
//                   ),
//                 )
//               ]
//             ),
//           ),
//            const Positioned(
//              left: 30,
//              top: 105,
//              child: Text(
//                'Brand',
//                 style: TextStyle(
//                   fontFamily: 'MarkPronormal400',
//                   fontSize: 18,
//                   fontWeight: FontWeight.w700,
//                   color: AppColors.buttonBarColor
//                 )
//              ),
//            ),
//            Positioned(
//              left: 30,
//              top: 135,
//              child: Container(
//                margin: const EdgeInsets.only(right: 3),
//                padding: const EdgeInsets.symmetric(horizontal: 15),
//                height: 37,
//                width: 347,
//                decoration: BoxDecoration(
//                  border:  Border.all(
//                    color: BorderColor.appColor,
//                  ),
//                  borderRadius: BorderRadius.circular(6)
//                  ),
//               //  child: const FilterBrandWidget()
//              ),
//            ),
//            const Positioned(
//              left: 30,
//              top: 185,
//              child: Text(
//                'Price',
//                 style: TextStyle(
//                   fontFamily: 'MarkPronormal400',
//                   fontSize: 18,
//                   fontWeight: FontWeight.w700,
//                   color: AppColors.buttonBarColor
//                 )
//              ),
//            ),
//            Positioned(
//              left: 30,
//              top: 215,
//              child: Container(
//                margin: const EdgeInsets.only(right: 3),
//                padding: const EdgeInsets.symmetric(horizontal: 15),
//                height: 37,
//                width: 347,
//                decoration: BoxDecoration(
//                  border:  Border.all(
//                    color: BorderColor.appColor,
//                  ),
//                  borderRadius: BorderRadius.circular(6)
//                  ),
//               //  child: const FilterPriceWidget()
//              ),
//            ),
//            const Positioned(
//              left: 30,
//              top: 265,
//               child: Text(
//                'Size',
//                 style: TextStyle(
//                   fontFamily: 'MarkPronormal400',
//                   fontSize: 18,
//                   fontWeight: FontWeight.w700,
//                   color: AppColors.buttonBarColor
//                 )
//            ),
//             ),
//            Positioned(
//              left: 30,
//              top: 295,
//              child: Container(
//                margin: const EdgeInsets.only(right: 3),
//                padding: const EdgeInsets.symmetric(horizontal: 15),
//                height: 37,
//                width: 347,
//                decoration: BoxDecoration(
//                  border:  Border.all(
//                    color: BorderColor.appColor,
//                  ),
//                  borderRadius: BorderRadius.circular(6)
//                  ),
//               //  child: const FilterSizeWidget()
//              ),
//            ),
//         ],
//       )
//     );
//   }
// }
