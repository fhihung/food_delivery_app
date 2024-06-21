import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart'; // Import material for alert dialog
import 'package:food_delivery_app/app/common_bottom_navigation.dart';
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

  Future<void> checkOut(
    BuildContext context,
    int userId,
    String totalPrice,
    String status,
    String paymentMethod,
    String shippingAddress,
  ) async {
    final url = Uri.parse('${apiUrl}checkouts');

    final headers = {
      'Content-Type': 'application/json',
    };

    final body = jsonEncode({
      'user_id': userId,
      'total_price': totalPrice,
      'status': status,
      'payment_method': paymentMethod,
      'shipping_address': shippingAddress,
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
        _showDialog(context, 'Success', 'Checkout was successful!');
      } else {
        if (kDebugMode) {
          print('Failed to update cart. Status code: ${response.statusCode}');
          print('Response body: ${response.body}');
        }
        _showDialog(context, 'Error', 'Failed to update checkout. Status code: ${response.statusCode}');
        throw Exception('Failed to update checkout. Status code: ${response.statusCode}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('An error occurred: $e');
      }
      _showDialog(context, 'Error', 'An error occurred: $e');
      throw Exception('An error occurred: $e');
    }
  }

  void _showDialog(BuildContext context, String title, String message) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CommonBottomNavigation(),
                    ));
              },
            ),
          ],
        );
      },
    );
  }
}
