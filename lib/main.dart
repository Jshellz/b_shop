import 'package:bsop/view/catalog_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BShop',
      home: Scaffold(
        appBar: AppBar(
          title: Text("BShop"),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,), label: "Главная"),
          BottomNavigationBarItem(icon: Icon(Icons.category, color: Colors.black,), label: "Категории"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket, color: Colors.black,), label: "Корзина"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box, color: Colors.black,), label: "Профиль"),
        ],
         backgroundColor: Colors.black
         ),
        body: CatalogScreen(),
      ),
    );
  }
}
