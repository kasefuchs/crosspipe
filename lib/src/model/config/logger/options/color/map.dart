import '../../../../enum/logger/level.dart';
import 'color.dart';

class ColorMap {
  static final _unknownColor = Color();

  Map<String, Color> _baseMap;

  ColorMap([
    this._baseMap = const {},
  ]);

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

  Color getKey(String key) => _baseMap[key] ?? _unknownColor;

  Color getLevel(LogLevel level) => getKey('level:${level.name.toLowerCase()}');

  Map toJson() => _baseMap.map(
        (key, value) => MapEntry(
          key,
          value.toJson(),
        ),
      );
}
