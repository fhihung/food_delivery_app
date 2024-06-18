import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery_app/app/router.dart';
import 'package:http/http.dart' as http;

class SignUpController {
  final String apiUrl = 'https://food.anbee.me/api/';

  Future<String> signUp(
    String account,
    String password,
    String address,
    String phoneNumber,
  ) async {
    final url = Uri.parse('${apiUrl}users');
    final data = <String, dynamic>{
      'account': account,
      'password': password,
      'role': 2,
      'address': address,
      'phonenumber': phoneNumber,
    };

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      // If the server returns a 200 OK or 201 Created response,
      // then parse the JSON.
      router.go('/login');
      _showToast('Sign up successful');
      return 'Sign up successful';
    } else {
      // If the server did not return a 200 OK or 201 Created response,
      // then throw an exception.
      _showToast('Failed to sign up');
      throw Exception('Failed to sign up');
    }
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
