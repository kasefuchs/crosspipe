import '../../../../enum/logger/level.dart';
import 'color.dart';

/// Represents a mapping of string keys to colors.
class ColorMap {
  /// The default color for unknown keys.
  static final _unknownColor = Color();

  /// The underlying map that stores the key-color pairs.
  Map<String, Color> _baseMap;

  ColorMap([
    this._baseMap = const {},
  ]);

  /// Creates a ColorMap instance from a JSON representation.
  factory ColorMap.fromJson(Map<String, dynamic> json) {
    return ColorMap(
      json.map(
        (key, value) => MapEntry(
          key,
          Color.fromJson(value),
        ),
      ),
    );
  }

  /// Retrieves the color associated with the specified key.
  Color getKey(String key) => _baseMap[key] ?? _unknownColor;

  /// Retrieves the color associated with the specified log level.
  Color getLevel(LogLevel level) => getKey('level:${level.name.toLowerCase()}');

  /// Converts the ColorMap instance to its JSON representation.
  Map toJson() => _baseMap.map(
        (key, value) => MapEntry(
          key,
          value.toJson(),
        ),
      );
}
