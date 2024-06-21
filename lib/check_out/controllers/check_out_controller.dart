import 'dart:convert';

import 'package:food_delivery_app/models/m_cart.dart';
import 'package:http/http.dart' as http;

class CheckOutController {
  final String apiUrl = 'https://371e-14-248-162-193.ngrok-free.app/api/';

  Future<List<MCart>> fetchCart(int userId) async {
    final response = await http.get(Uri.parse('${apiUrl}carts/user/$userId'));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List<dynamic>;
      final carts = body
          .map(
            (dynamic item) => MCart.fromJson(item as Map<String, dynamic>),
          )
          .toList();
      return carts;
    } else {
      throw Exception('Failed to load products in cart');
    }
  }
}
