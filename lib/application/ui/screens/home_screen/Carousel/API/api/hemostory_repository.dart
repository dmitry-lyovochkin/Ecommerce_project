import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/api/api_list.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/api/dio.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/api/homestore_api_provider.dart';

class HomestoreRepository {
  final HomeStoreProvider _homestoreProvider = HomeStoreProvider();
  Future<List<Home_store>>getAllHome() => _homestoreProvider.getHomestore();
}
