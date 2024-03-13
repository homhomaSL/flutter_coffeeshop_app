import 'package:flutter/material.dart';
import 'package:flutter_coffeeshop_app/models/coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: 'Cappuccino',
      price: '3.60',
      imagePath: 'assets/images/coffe1.png',
    ),
    Coffee(
      name: 'Mocha',
      price: '4.20',
      imagePath: 'assets/images/coffe2.png',
    ),
    Coffee(
      name: 'Latte',
      price: '2.40',
      imagePath: 'assets/images/coffe3.png',
    ),
    Coffee(
      name: 'Doppio',
      price: '2.90',
      imagePath: 'assets/images/coffe4.png',
    ),
  ];

  List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;

  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
