import 'package:flutter/material.dart';

/// Source: https://stackoverflow.com/questions/58360989/programmatically-lighten-or-darken-a-hex-color-in-dart

extension ColorX on Color {
  Color darken([int percent = 10]) {
    final c = this;
    assert(1 <= percent && percent <= 100);
    var f = 1 - percent / 100;
    return Color.fromARGB(
        c.alpha, (c.red * f).round(), (c.green * f).round(), (c.blue * f).round());
  }

  Color lighten([int percent = 10]) {
    final c = this;
    assert(1 <= percent && percent <= 100);
    var p = percent / 100;
    return Color.fromARGB(c.alpha, c.red + ((255 - c.red) * p).round(),
        c.green + ((255 - c.green) * p).round(), c.blue + ((255 - c.blue) * p).round());
  }
}
