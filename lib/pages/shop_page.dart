import 'package:flutter/material.dart';
import 'package:flutter_coffeeshop_app/components/coffee_tile.dart';
import 'package:flutter_coffeeshop_app/models/coffe_shop.dart';
import 'package:flutter_coffeeshop_app/models/coffee.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Coffee is added to cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const Text(
                'What kind of coffee would you like?',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 25),
              Expanded(
                  child: ListView.builder(
                      itemCount: value.coffeeShop.length,
                      itemBuilder: (context, index) {
                        Coffee eachCoffee = value.coffeeShop[index];
                        return CoffeeTile(
                          coffee: eachCoffee,
                          onPressed: () => addToCart(eachCoffee),
                          icon: const Icon(
                            Icons.add_rounded,
                            size: 30,
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
