import 'dart:io';

void main() {
  String numStr = stdin.readLineSync()!;

  // Output
  String result = removeTrailingZeros(numStr);
  print(result);
}

String removeTrailingZeros(String s) {
  // Check if the string contains a decimal point
  if (s.contains('.')) {
    // Split the string into integer and decimal parts
    List<String> parts = s.split('.');

    // Remove trailing zeros from the decimal part
    parts[1] = parts[1].replaceAll(RegExp(r'0*$'), '');

    // Check if the decimal part is empty
    if (parts[1].isEmpty) {
      return parts[0];
    } else {
      return '${parts[0]}.${parts[1]}';
    }
  } else {
    // If there is no decimal point, return the original string
    return s;
  }
}
