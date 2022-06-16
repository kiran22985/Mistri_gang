import 'package:flutter/material.dart';
void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}

// showDialog(
//                       context: context,
//                       builder: (ctx) => AlertDialog(
//                         title: Text("Show Alert Dialog Box"),
//                         content: Text("You have raised a Alert Dialog Box"),
//                         actions: <Widget>[
//                           FlatButton(
//                             onPressed: () {
//                               Navigator.of(ctx).pop();
//                             },
//                             child: Text("Ok"),
//                           ),