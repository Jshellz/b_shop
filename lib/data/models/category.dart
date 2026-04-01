// category
import 'package:bsop/data/models/products.dart';

class Category {
  final String title;
  final Products products;

// constructor
  Category({
    required this.title,
    required this.products
  });

// constructor, if values is nullable
  Category copyWith(String? title, Products? products) {
    return Category(
      title: title ?? this.title,
      products: products ?? this.products,
    );
  }
}