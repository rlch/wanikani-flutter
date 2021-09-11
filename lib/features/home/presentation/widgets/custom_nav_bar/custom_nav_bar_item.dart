import 'package:flutter/material.dart';

class CustomNavBarItem {
  const CustomNavBarItem({
    required this.label,
    required this.icon,
    required this.backgroundColor,
  });

  final String label;
  final IconData icon;
  final Color backgroundColor;
}
