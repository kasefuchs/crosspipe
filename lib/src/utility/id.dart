import 'dart:math';

/// Generates a random ID of the specified size.
///
/// The [length] parameter specifies the length of the random ID to be generated.
/// The [existingOnes] parameter is an optional iterable of existing IDs to avoid duplicates.
/// Returns a randomly generated ID as a string.
String generateRandomId(int length, [Iterable<String> existingOnes = const []]) {
  late String result; // Variable to store the generated ID
  late bool exists; // Flag to check if the generated ID already exists

  Random random = Random.secure(); // Initialize a secure random number generator

  do {
    // Generate a list of random values in hexadecimal format
    Iterable<int> rawValues = List.generate(length, (_) => random.nextInt(16));
    Iterable<String> hexValues = rawValues.map((value) => value.toRadixString(16));

    result = hexValues.join(); // Convert the list of hexadecimal values to a single string
    exists = existingOnes.contains(result); // Check if the generated ID already exists in the list
  } while (exists); // Repeat the generation process if the ID already exists

  return result;
}
