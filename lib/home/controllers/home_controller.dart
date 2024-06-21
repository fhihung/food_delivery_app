import 'dart:convert';

import 'package:food_delivery_app/models/m_category_product.dart';
import 'package:food_delivery_app/models/m_product.dart';
import 'package:food_delivery_app/models/m_user.dart';
import 'package:http/http.dart' as http;

class HomeController {
  static const String apiUrl = 'https://371e-14-248-162-193.ngrok-free.app/api/';

  Future<List<MProduct>> fetchNewProducts() async {
    final response = await http.get(Uri.parse('${apiUrl}new-products'));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List<dynamic>;
      final newProducts = body
          .map(
            (dynamic item) => MProduct.fromJson(item as Map<String, dynamic>),
          )
          .toList();
      return newProducts;
    } else {
      throw Exception('Failed to load new products');
    }
  }

  Future<List<MCategoryProduct>> fetchCategories() async {
    final response = await http.get(Uri.parse('${apiUrl}category-products'));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List<dynamic>;
      final categories = body
          .map(
            (dynamic item) => MCategoryProduct.fromJson(item as Map<String, dynamic>),
          )
          .toList();
      return categories;
    } else {
      throw Exception('Failed to load categories');
    }
  }

  Future<MUser> fetchUser(String token) async {
    final url = Uri.parse('${apiUrl}me');
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
        // Add other headers if needed (e.g., cookies)
      },
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as Map<String, dynamic>;
      final user = MUser.fromJson(body);
      return user;
    } else {
      throw Exception('Failed to load user');
    }
  }
}
