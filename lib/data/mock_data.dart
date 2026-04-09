import 'package:bsop/model/product.dart';

class MockData {

  static List<Product> products = [
    Product(
      id: '1',
      name: 'Лопата штыковая "Урал"',
      description: 'Надежная лопата из закаленной стали. Деревянная рукоять.',
      price: 1200.00,
      imageUrl: 'https://via.placeholder.com/300x300?text=Лопата', // Заглушка картинки
      category: 'Для огорода',
    ),
    Product(
      id: '2',
      name: 'Секатор садовый Profi',
      description: 'Острые лезвия, удобный хват. Подходит для веток до 2 см.',
      price: 850.50,
      imageUrl: 'https://via.placeholder.com/300x300?text=Секатор',
      category: 'Для сада',
    ),
    Product(
      id: '3',
      name: 'Грабли веерные',
      description: 'Пластиковые, легкие. Идеальны для сбора листвы.',
      price: 450.00,
      imageUrl: 'https://via.placeholder.com/300x300?text=Грабли',
      category: 'Для огорода',
    ),
    Product(
      id: '4',
      name: 'Шланг поливочный 20м',
      description: 'Армированный шланг, не перегибается.',
      price: 2100.00,
      imageUrl: 'https://via.placeholder.com/300x300?text=Шланг',
      category: 'Полив',
    ),
     Product(
      id: '5',
      name: 'Триммер электрический',
      description: 'Мощность 1000Вт. Легкий и маневренный.',
      price: 5500.00,
      imageUrl: 'https://via.placeholder.com/300x300?text=Триммер',
      category: 'Техника',
    ),
  ];

  // для фильтров
  static List<String> get categories {
    final cats = products.map((p) => p.category).toSet().toList();
    return ['Все', ...cats];
  }
}