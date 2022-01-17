import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/api/api_list.dart';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/API/api/homestore_api_provider.dart';

class HomestoreRepository {
  HomeStoreProvider _homestoreProvider = HomeStoreProvider();
  Future<List<Homestore>>getAllHome() => _homestoreProvider.getHomestore();
}
