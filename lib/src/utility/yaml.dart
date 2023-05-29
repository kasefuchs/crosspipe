import 'package:yaml/yaml.dart';

/// Converts a YAML list to a Dart list recursively.
///
/// The [yamlList] parameter is the YAML list to be converted.
/// Returns a list containing the converted values.
List<dynamic> convertYamlListToList(YamlList yamlList) {
  final List<dynamic> convertedList = List.empty(growable: true);

  for (dynamic item in yamlList) {
    switch (item.runtimeType) {
      case YamlList:
        convertedList.add(convertYamlListToList(item));
        break;
      case YamlMap:
        convertedList.add(convertYamlMapToMap(item));
        break;
      default:
        convertedList.add(item);
    }
  }

  return convertedList;
}

/// Converts a YAML map to a Dart map recursively.
///
/// The [yamlMap] parameter is the YAML map to be converted.
/// Returns a map containing the converted values.
Map<String, dynamic> convertYamlMapToMap(YamlMap yamlMap) {
  final Map<String, dynamic> map = Map.from(yamlMap);

  for (String key in map.keys) {
    switch (map[key].runtimeType) {
      case YamlList:
        map[key] = convertYamlListToList(map[key]);
        break;
      case YamlMap:
        map[key] = convertYamlMapToMap(map[key]);
        break;
    }
  }

  return map;
}
