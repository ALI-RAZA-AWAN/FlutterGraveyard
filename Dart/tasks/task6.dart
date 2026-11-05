import 'dart:io';

Future<void> main() async {
  print("Enter a string:");
  String name = stdin.readLineSync()!;

  await Future.delayed(Duration(seconds: 1));

  String reverse = name.split('').reversed.join();

  print("Reversed string: $reverse");
}