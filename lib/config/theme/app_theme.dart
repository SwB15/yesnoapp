import 'package:flutter/material.dart';

const Color customColor = Color(0xFF00FF00);
const List<Color> colorsThemes = [
  customColor,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.indigo,
  Colors.lime,
  Colors.amber,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < colorsThemes.length,
            'Colors index must be greater than 0 and less than ${colorsThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorsThemes[selectedColor],
        brightness: Brightness.light);
  }
}
