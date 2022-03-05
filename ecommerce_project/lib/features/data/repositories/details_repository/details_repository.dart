import 'package:ecommerce_project/features/data/datasources/RemoteDataSource/details_remote_data_source.dart';
import 'package:ecommerce_project/features/data/models/details_model.dart';

class DetailsRepository {
  final DetailsList _detailsProvider = DetailsList();
  Future<List<GetDetails>> getAllDetails() => _detailsProvider.getProducts();
}