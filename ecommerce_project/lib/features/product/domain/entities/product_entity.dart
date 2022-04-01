import 'package:equatable/equatable.dart';
class ProductEntity extends Equatable {
   final String? cpu;
   final String? camera;
   final List<String>? capacity;
   final List<String>? color;
   final String? id;
   final List<String>? images;
   final bool? isFavorites;
   final int? price;
   final double? rating;
   final String? sd;
   final String? ssd;
   final String? title;

   const ProductEntity({
    required this.cpu, 
    required this.camera, 
    required this.capacity, 
    required this.color, 
    required this.id, 
    required this.images, 
    required this.isFavorites, 
    required this.price, 
    required this.rating, 
    required this.sd, 
    required this.ssd, 
    required this.title, 
  });

  @override
  List<Object?> get props => [cpu, camera, capacity, color, id, images, isFavorites, price, rating, sd, ssd, title];
}