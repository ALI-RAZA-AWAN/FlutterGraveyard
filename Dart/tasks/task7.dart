import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\n1. Add Task");
    print("2. View Tasks");
    print("3. Remove Task");
    print("4. Exit");

    String choice = stdin.readLineSync()!;

    if (choice == "1") {
      print("Enter task:");
      String task = stdin.readLineSync()!;
      tasks.add(task);
      print("Task added");
    } else if (choice == "2") {
      print(tasks);
    } else if (choice == "3") {
      print("Enter task number:");
      int n = int.parse(stdin.readLineSync()!);
      tasks.removeAt(n - 1);
      print("Task removed");
    } else if (choice == "4") {
      break;
    }
  }
}