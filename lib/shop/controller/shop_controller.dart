import 'dart:convert';

import 'package:food_delivery_app/models/m_brand.dart';
import 'package:food_delivery_app/models/m_product.dart';
import 'package:http/http.dart' as http;

class ShopController {
  static const String apiUrl = 'https://371e-14-248-162-193.ngrok-free.app/api/';

  Future<List<MProduct>> fetchRices() async {
    final response = await http.get(Uri.parse('${apiUrl}products_by_category_id/1'));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List<dynamic>;
      final drinks = body
          .map(
            (dynamic item) => MProduct.fromJson(item as Map<String, dynamic>),
          )
          .toList();
      return drinks;
    } else {
      throw Exception('Failed to load drinks');
    }
  }

  Future<List<MProduct>> fetchNoodles() async {
    final response = await http.get(Uri.parse('${apiUrl}products_by_category_id/2'));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List<dynamic>;
      final drinks = body
          .map(
            (dynamic item) => MProduct.fromJson(item as Map<String, dynamic>),
          )
          .toList();
      return drinks;
    } else {
      throw Exception('Failed to load drinks');
    }
  }

  Future<List<MProduct>> fetchDrinks() async {
    final response = await http.get(Uri.parse('${apiUrl}products_by_category_id/4'));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List<dynamic>;
      final drinks = body
          .map(
            (dynamic item) => MProduct.fromJson(item as Map<String, dynamic>),
          )
          .toList();
      return drinks;
    } else {
      throw Exception('Failed to load drinks');
    }
  }

  Future<List<MProduct>> fetchJunkFoods() async {
    final response = await http.get(Uri.parse('${apiUrl}products_by_category_id/3'));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List<dynamic>;
      final drinks = body
          .map(
            (dynamic item) => MProduct.fromJson(item as Map<String, dynamic>),
          )
          .toList();
      return drinks;
    } else {
      throw Exception('Failed to load drinks');
    }
  }

  Future<List<MBrand>> fetchBrands() async {
    final response = await http.get(Uri.parse('${apiUrl}brands'));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as List<dynamic>;
      final brands = body
          .map(
            (dynamic item) => MBrand.fromJson(item as Map<String, dynamic>),
          )
          .toList();
      return brands;
    } else {
      throw Exception('Failed to load drinks');
    }
  }
}
