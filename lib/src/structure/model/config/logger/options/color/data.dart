/// Represents the data of a color, including its red, green, and blue components.
class ColorData {
  /// Max value of each color component.
  static const int _maxValue = 0xFF;

  /// The value of the red component.
  final int red;

  /// The value of the green component.
  final int green;

  /// The value of the blue component.
  final int blue;

  ColorData({
    required this.red,
    required this.green,
    required this.blue,
  });

  /// Retrieves the intensity of the red component normalized between 0.0 and 1.0.
  double get redIntensity => red / _maxValue;

  /// Retrieves the intensity of the green component normalized between 0.0 and 1.0.
  double get greenIntensity => green / _maxValue;

  /// Retrieves the intensity of the blue component normalized between 0.0 and 1.0.
  double get blueIntensity => blue / _maxValue;

  /// Retrieves the hexadecimal representation of the color in the format `0xRRGGBB`.
  int get hexColor => ((red & _maxValue) << 16) + ((green & _maxValue) << 8) + (blue & _maxValue);

  /// Creates a new ColorData instance by inverting the current color.
  ColorData invert() => ColorData(
        red: _maxValue - red,
        green: _maxValue - green,
        blue: _maxValue - blue,
      );

  /// Creates a new ColorData instance from a hexadecimal string representation of the color.
  factory ColorData.fromJson(String json) {
    int value = int.parse(json, radix: 16);

    return ColorData(
      red: (value >> 16) & _maxValue,
      green: (value >> 8) & _maxValue,
      blue: value & _maxValue,
    );
  }

  /// Converts the color to its hexadecimal representation.
  String toJson() {
    return hexColor.toRadixString(16).padLeft(6, '0');
  }
}
