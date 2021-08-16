// @dart=2.9

import 'package:flutter/material.dart';

Widget criaTextField(
  String label,
  TextEditingController controle,
  TextInputType textInputType,
) {
  return TextField(
    controller: controle,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: TextStyle(color: Colors.black),
      border: OutlineInputBorder(),
    ),
    style: TextStyle(color: Colors.black, fontSize: 15.0),
    keyboardType: textInputType,
  );
}
