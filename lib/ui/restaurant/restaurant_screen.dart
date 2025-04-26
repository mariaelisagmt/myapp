import 'package:flutter/material.dart';
import 'package:myapp/model/dish.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantScreen extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(restaurant.name)),
      body: Center(
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/${restaurant.imagePath}', width: 128),
            Text(
              "Mais pedidos",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Column(
              children: List.generate(restaurant.dishes.length, (index) {
                Dish dish = restaurant.dishes[index];
                return ListTile(
                  leading: Image.asset('assets/${dish.imagePath}', width: 48),
                  title: Text(dish.name),
                  subtitle: Text("R\$${dish.price.toStringAsFixed(2)}"),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
