
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:uzum/data/models/product_model.dart';

Future<List?> getProductsByCategory(String category) async {
  Uri uri = Uri.parse('https://fakestoreapi.com/products/category/$category');
  var responce = await http.get(uri);

  if (responce.statusCode == 200) {
    var jsonResponce = convert.jsonDecode(responce.body);
    return jsonResponce.map((e) => Product.fromJson(e)).toList();
  }
  return null;
}
