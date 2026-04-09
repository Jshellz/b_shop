import 'package:flutter/material.dart';

const _categories = [
  {"name": "Все для дома","icon": Icons.home_filled},
  {"name": "Все для сада и огорода","icon": Icons.grass_rounded},
  {"name": "Электроника","icon": Icons.electric_bolt},
  {"name": "Расходники","icon": Icons.more_time_sharp},
];

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Категории")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          childAspectRatio: 1.2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16
        ),
        itemCount: _categories.length,
        itemBuilder: (context, i) {
          final c = _categories[i];
          return Card(
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(c["icon"] as IconData, size: 48),
                  const SizedBox(height: 8),
                  Text(c["name"] as String)
                ],
              ),
            ),
          );
        },
        ),
    );
  }
}