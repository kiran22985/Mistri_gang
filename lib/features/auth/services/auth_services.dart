import 'package:mistri/models/customer.dart';
import 'package:http/http.dart' as http;
import 'package:mistri/constants/error_handling.dart';
import 'package:mistri/constants/utils.dart';
import 'package:flutter/material.dart';
String uri = 'http://10.0.2.2:3000';
class AuthService{
  void signupUser({
    required BuildContext context,
    required fullName,
    required phone,
    required email,
    required address,
    required password,
  }) async{
    try{
      User user = User(
        id: '',
        fullName: fullName,
        password: password,
        email: email,
        address: address,
        phone: phone
        
      );

      http.Response res = await http.post(
        Uri.parse('$uri/custregister'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },

      );
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(
            context,
            'Account created! Login with the same credentials!',
          );
        },
      );
    }catch(e){
       showSnackBar(context, e.toString());
    }
  }
}