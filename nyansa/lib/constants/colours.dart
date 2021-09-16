import 'dart:ui';

class ColorSys{

  static Color colorFromHex(String colorCode) {
    final hexCode = colorCode.replaceAll('#', '');
    Color newColor = Color(int.parse('FF$hexCode', radix: 16));
    return newColor;
  }

  static Color primary = colorFromHex('#02A94C');
  static Color gray = colorFromHex('#02A94C');
  static Color black = colorFromHex('#000000');
  static Color white = colorFromHex('#FFFFFF');
  static Color pinScreenColour = colorFromHex('#3D59A7');
  static Color clearButtonColour = colorFromHex('#5069B0');
  static Color nextButtonColour = colorFromHex('#00ACA8');
}