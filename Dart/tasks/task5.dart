import 'dart:math';

int? generateRandom() {
  Random r = Random();

  if (r.nextBool()) {
    return 100;
  } else {
    return null;
  }
}

void main() {
  int status = generateRandom() ?? 0;

  print(status);
}