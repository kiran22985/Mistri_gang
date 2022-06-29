import 'dart:convert';

import 'package:mistri/constants/error_handling.dart';
import 'package:mistri/constants/global_variables.dart';
import 'package:mistri/constants/utils.dart';
import 'package:mistri/models/service.dart';
import 'package:mistri/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
String uri = 'http://10.0.2.2:3000';
class SearchServices {
  Future<List<Service>> fetchSearchedProduct({
    required BuildContext context,
    required String searchQuery,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    List<Service> productList = [];
    try {
      http.Response res = await http.get(
        Uri.parse('$uri/api/services/search/$searchQuery'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          for (int i = 0; i < jsonDecode(res.body).length; i++) {
            productList.add(
              Service.fromJson(
                jsonEncode(
                  jsonDecode(res.body)[i],
                ),
              ),
            );
          }
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
    return productList;
  }
}