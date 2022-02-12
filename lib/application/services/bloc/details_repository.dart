import 'package:ecommerce_project/application/services/API/http_get.dart';
import 'package:ecommerce_project/application/services/API/model_details.dart';

class DetailsRepository {
  final DetailsList _detailsProvider = DetailsList();
  Future<List<GetDetails>> getAllDetails() => _detailsProvider.getProducts();
}
// обертка над запросом.Теперь всё взамодействие будет чеоез getAllDetails()