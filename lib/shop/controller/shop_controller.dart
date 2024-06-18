import 'dart:convert';

import 'package:food_delivery_app/models/m_drink.dart';
import 'package:food_delivery_app/models/m_food.dart';
import 'package:http/http.dart' as http;

class ShopController {
  static const String apiUrl = 'https://food.anbee.me/api/';

  Future<List<MDrink>> fetchDrinks() async {
    final response = await http.get(Uri.parse('${apiUrl}drinks'));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List<dynamic>;
      final drinks = body
          .map(
            (dynamic item) => MDrink.fromJson(item as Map<String, dynamic>),
          )
          .toList();
      return drinks;
    } else {
      throw Exception('Failed to load drinks');
    }
  }

  Future<List<MFood>> fetchFoods() async {
    final response = await http.get(Uri.parse('${apiUrl}foods'));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List<dynamic>;
      final drinks = body
          .map(
            (dynamic item) => MFood.fromJson(item as Map<String, dynamic>),
          )
          .toList();
      return drinks;
    } else {
      throw Exception('Failed to load drinks');
    }
  }
}
