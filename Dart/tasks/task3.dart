import 'dart:io';
import 'dart:async';

Future<void> main() async {
  stdout.write("Enter first number: ");
  String? input1 = stdin.readLineSync();

  stdout.write("Enter second number: ");
  String? input2 = stdin.readLineSync();

  int a = int.parse(input1!);
  int b = int.parse(input2!);

  await Future.delayed(Duration(seconds: 3));

  print("Sum: ${a + b}");
}