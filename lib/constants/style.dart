import 'package:flutter/material.dart';
import 'package:student_hub/constants/colors.dart';

const double APP_PADDING_X = 12;

const INPUT_TITLE_STYLE =
    TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: tdGrey);

InputDecoration inputOutlined(String hintText) {
  return InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
      ),
      hintText: hintText,
      filled: true,
      fillColor: Colors.white);
}
