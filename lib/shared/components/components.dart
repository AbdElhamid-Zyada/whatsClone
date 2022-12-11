import 'package:flutter/material.dart';

Widget defaultTextForm({
  required TextEditingController controller,
  required String label,
  Widget? prefix,
  Widget? suffix,
  TextInputType? type,
  bool isPassword = false,
  String? validationError,
}) =>
    TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: prefix,
        suffixIcon: suffix,
        border: OutlineInputBorder(),
      ),
      obscureText: isPassword,
      keyboardType: type,
      validator: (String? value) {
        if (value!.isEmpty) {
          return validationError;
        }
        return null;
      },
    );
