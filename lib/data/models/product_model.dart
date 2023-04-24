// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);


class Product {
  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.category,
    required this.description,
    required this.image,
  });

  int id;
  String title;
  num price;
  String category;
  String description;
  String image;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        category: json["category"],
        description: json["description"],
        image: json["image"],
      );
}
