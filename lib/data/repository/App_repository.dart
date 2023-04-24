import 'package:uzum/data/api_service/product_service.dart';

class AppRepository {
  static Future<List?> getProductsByCategoryFromApi(String category) =>
      getProductsByCategory(category);
}
