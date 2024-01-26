import 'dart:io';
void main() {

  int num = int.parse(stdin.readLineSync()!);

  print(isRepdigit(num));
}

bool isRepdigit(int n) {

  String nStr = n.toString();

  return nStr.split('').every((digit) => digit == nStr[0]);
}
