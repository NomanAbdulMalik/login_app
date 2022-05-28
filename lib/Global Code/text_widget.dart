import 'package:flutter/material.dart';

textwidget(String name, double fontsize) {
  return Text(
    name,
    style: TextStyle(
      fontSize: fontsize,
      color: Colors.grey[900],
      fontWeight: FontWeight.bold,
    ),
  );
}
