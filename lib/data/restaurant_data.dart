import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantData {
  List<Restaurant> listRestaurant = [];
  Future<List<Restaurant>> getRestaurants() async {
    //rootBundle - ler texto que está no assets
    //Dart future = observable / async (Esperando que aconteça)
    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> data = json.decode(jsonString);
    List<dynamic> restaurantsData = data['restaurants'];

    for (var data in restaurantsData) {
      Restaurant restaurant = Restaurant.fromMap(data);
      listRestaurant.add(restaurant);
    }

    return listRestaurant;
  }
}
