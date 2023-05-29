import 'package:ansicolor/ansicolor.dart';

import 'color.dart';
import 'data.dart';

/// Extension for the AnsiPen class
extension BetterAnsiPen on AnsiPen {
  /// Creates an AnsiPen instance from a Color object
  static AnsiPen fromColor(Color color) => fromColorsData(
    background: color.background,
    foreground: color.foreground,
  );

  /// Creates an AnsiPen instance from ColorData objects
  static AnsiPen fromColorsData({
    ColorData? background,
    ColorData? foreground,
  }) {
    AnsiPen pen = AnsiPen();

    // Sets the background color if provided
    if (background != null) {
      pen.rgb(
        r: background.redIntensity,
        g: background.greenIntensity,
        b: background.blueIntensity,
        bg: true,
      );
    }

    // Sets the foreground color if provided
    if (foreground != null) {
      pen.rgb(
        r: foreground.redIntensity,
        g: foreground.greenIntensity,
        b: foreground.blueIntensity,
      );
    }

    return pen;
  }
}
