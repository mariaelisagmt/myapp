import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantData {
  Future<List<Restaurant>> getRestaurants() async {
    List<Restaurant> listRestaurant = [];

    //rootBundle - ler texto que está no assets
    //Dart future = observable / async (Esperando que aconteça)
    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> data = json.decode(jsonString);
  }
}
