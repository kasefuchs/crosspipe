import 'package:yaml/yaml.dart';

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
