class ColorData {
  static const int _maxValue = 0xFF;

  final int red;

  final int green;

  final int blue;

  ColorData({
    required this.red,
    required this.green,
    required this.blue,
  });

  double get redIntensity => red / _maxValue;

  double get greenIntensity => green / _maxValue;

  double get blueIntensity => blue / _maxValue;

  int get hexColor =>
      ((red & _maxValue) << 16) +
      ((green & _maxValue) << 8) +
      (blue & _maxValue);

  ColorData invert() => ColorData(
        red: _maxValue - red,
        green: _maxValue - green,
        blue: _maxValue - blue,
      );

  factory ColorData.fromJson(String json) {
    int value = int.parse(json, radix: 16);

    return ColorData(
      red: (value >> 16) & _maxValue,
      green: (value >> 8) & _maxValue,
      blue: value & _maxValue,
    );
  }

  String toJson() {
    return hexColor.toRadixString(16).padLeft(6, '0');
  }
}
