import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantData extends ChangeNotifier {
  List<Restaurant> listRestaurant = [];
  //alimenta a lista que estara sempre disponivel, foi definido assim para que não prejudique o funcionamento e mantenha o funcionamento otimizado, assim ele so consulta uma unica vez e não toda vez que recarregar a tela
  Future<void> getRestaurants() async {
    //rootBundle - ler texto que está no assets
    //Dart future = observable / async (Esperando que aconteça)
    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> data = json.decode(jsonString);
    List<dynamic> restaurantsData = data['restaurants'];

    for (var data in restaurantsData) {
      Restaurant restaurant = Restaurant.fromMap(data);
      listRestaurant.add(restaurant);
    }
  }
}
