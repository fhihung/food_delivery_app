import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:food_delivery_app/models/m_cart.dart';
import 'package:http/http.dart' as http;

class CartController {
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

  Future<void> updateCart(
    int userId,
    int productId,
    int quantity,
  ) async {
    final url = Uri.parse('https://371e-14-248-162-193.ngrok-free.app/api/carts/add');

    final headers = {
      'Content-Type': 'application/json',
    };

    final body = jsonEncode({
      'user_id': userId,
      'product_id': productId,
      'quantity': quantity,
    });

    try {
      final response = await http.post(
        url,
        headers: headers,
        body: body,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        if (kDebugMode) {
          print('Request was successful');
        }
        final cart = MCart.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      } else {
        if (kDebugMode) {
          print('Failed to update cart. Status code: ${response.statusCode}');
          print('Response body: ${response.body}');
        }
        throw Exception('Failed to update cart. Status code: ${response.statusCode}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('An error occurred: $e');
      }
      throw Exception('An error occurred: $e');
    }
  }
}
