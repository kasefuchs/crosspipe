import 'package:ansicolor/ansicolor.dart';

import 'color.dart';
import 'data.dart';

extension BetterAnsiPen on AnsiPen {
  static AnsiPen fromColor(Color color) => fromColorsData(
    background: color.background,
    foreground: color.foreground,
  );

  static AnsiPen fromColorsData({
    ColorData? background,
    ColorData? foreground,
  }) {
    AnsiPen pen = AnsiPen();

    if (background != null) {
      pen.rgb(
        r: background.redIntensity,
        g: background.greenIntensity,
        b: background.blueIntensity,
        bg: true,
      );
    }

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
