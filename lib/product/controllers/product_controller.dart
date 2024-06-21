import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:food_delivery_app/models/m_product.dart';
import 'package:http/http.dart' as http;

class ProductController {
  static const String apiUrl = 'https://371e-14-248-162-193.ngrok-free.app/api/';

  Future<List<MProduct>> fetchProductByBrandId(int brandId) async {
    final response = await http.get(Uri.parse('${apiUrl}products_by_brand_id/$brandId'));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List<dynamic>;
      final newProducts = body
          .map(
            (dynamic item) => MProduct.fromJson(item as Map<String, dynamic>),
          )
          .toList();
      return newProducts;
    } else {
      throw Exception('Failed to load  products');
    }
  }

  Future<void> addToCart(
    int userId,
    int productId,
    int quantity,
  ) async {
    final url = Uri.parse('${apiUrl}carts/add');

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
