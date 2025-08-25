import 'package:flutter/material.dart';

// ignore: constant_identifier_names
const Color KPrimaryBlue = Color(0xFF2563EB);
// ignore: constant_identifier_names
const Color KAccentOrange = Color(0xFFFF9800);

final InputDecorationTheme inputTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[900],
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
    ),
    hintStyle:TextStyle(color: Colors.grey[500]),
);