
// products
class Products {
  final int id = 0;
  final String name;
  final String description;
  final double price;
  
// constructor
  Products({
    required this.name,
    required this.description,
    required this.price,
  });

// constructor, if values is nullable
  Products copyWith(String? name, String? description, double? price,) {
    return Products(
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
    );
  }

// constructor, with json
  Products fromJson(Map<dynamic, dynamic> json) {
    return Products(
      name: json["name"],
      description: json["description"],
      price: json["price"]
    );
  }
}