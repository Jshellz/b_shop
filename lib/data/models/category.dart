import 'package:bsop/data/models/products.dart';

class Category {
  final String title;
  final List<Products> products;

  Category({
    required this.title,
    required this.products
  });

  Category copyWith({
      String? title,
      List<Products>? products,
  }) {
      return Category(
        title: title ?? this.title,
        products: products ?? this.products,
    );
  }

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      title: json['title'] as String? ?? '',
      products: (json['products'] as List<dynamic>?)
              ?.map((item) => Products.fromJson(item as Map<String, dynamic>))
              .toList() ?? [],
    );
  }
}