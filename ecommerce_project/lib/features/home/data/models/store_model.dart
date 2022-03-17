
import 'dart:convert';
import 'package:ecommerce_project/features/home/data/models/bestseller_model.dart';
import 'package:ecommerce_project/features/home/data/models/homestore_model.dart';

class StoreModel {
  final String id;
  final List<HomestoreModel> homestore;
  final List<BestsellerModel> bestseller;
  
  StoreModel({
    required this.id,
    required this.homestore,
    required this.bestseller,
  });

}


//   StoreModel copyWith({
//     String? id,
//     List<HomestoreModel>? homestore,
//     List<BestsellerModel>? bestseller,
//   }) {
//     return StoreModel(
//       id: id ?? this.id,
//       homestore: homestore ?? this.homestore,
//       bestseller: bestseller ?? this.bestseller,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       '_id': id,
//       'home_store': homestore.map((x) => x.toMap()).toList(),
//       'best_seller': bestseller.map((x) => x.toMap()).toList(),
//     };
//   }

//   factory StoreModel.fromMap(Map<String, dynamic> map) {
//     return StoreModel(
//       id: map['_id'] ?? '',
//       homestore: List<HomestoreModel>.from(map['home_store']?.map((x) => HomestoreModel.fromMap(x))),
//       bestseller: List<BestsellerModel>.from(map['best_seller']?.map((x) => BestsellerModel.fromMap(x))),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory StoreModel.fromJson(String source) => StoreModel.fromMap(json.decode(source));

//   @override
//   String toString() => 'Reposnsestore(_id: $id, home_store: $homestore, best_seller: $bestseller)';



//   @override
//   int get hashCode => id.hashCode ^ homestore.hashCode ^ bestseller.hashCode;

// }


