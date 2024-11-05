import 'package:flutter/material.dart';

class ItemDetailModel {
  final String text, value;
  final Color color;

  const ItemDetailModel({
    required this.color,
    required this.text,
    required this.value,
  });
}
