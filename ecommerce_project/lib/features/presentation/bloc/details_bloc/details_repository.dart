import 'package:ecommerce_project/application/services/API/http_get.dart';
import 'package:ecommerce_project/features/data/models/details_model.dart';

class DetailsRepository {
  final DetailsList _detailsProvider = DetailsList();
  Future<List<GetDetails>> getAllDetails() => _detailsProvider.getProducts();
}