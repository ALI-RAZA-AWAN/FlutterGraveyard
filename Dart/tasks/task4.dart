import 'dart:io';

Future<void> main() async {
  print("Enter names separated by commas:");
  String input = stdin.readLineSync()!;

  List<String> names = input.split(',');

  await Future.delayed(Duration(seconds: 1));

  names.sort();

  print(names);
}