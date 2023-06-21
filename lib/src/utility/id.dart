import 'dart:math';

String generateRandomId(int length,
    [Iterable<String> existingOnes = const []]) {
  late String result;
  late bool exists;
  Random random = Random.secure();
  do {
    Iterable<int> rawValues = List.generate(length, (_) => random.nextInt(16));
    Iterable<String> hexValues =
        rawValues.map((value) => value.toRadixString(16));

    result = hexValues.join();
    exists = existingOnes.contains(result);
  } while (exists);
  return result;
}
