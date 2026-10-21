
### Widget :
flutter mein almost har visual chez widget ha.
multiple widgets milkr app banate ha.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Center(
          child: Text("Hello Flutter!"),
        ),
      ),
    ),
  );
}


### runApp(MaterialApp());

runApp() Flutter ko batata hai ke kaunsa widget app ka root hoga.

### MaterialApp(
  home: Scaffold(),
)


MaterialApp app-level Material Design features provide karta hai. home mein hum starting screen dete hain.

### Scaffold ek complete screen ka basic structure banata hai.

Iske common parts:
- appBar: — Screen ke top ki bar.
- body: — Screen ka main area.
- floatingActionButton: — Floating button.
- bottomNavigationBar: — Bottom navigation.

#### Text() and Center()
Center(
  child: Text("Hello Flutter!"),
)


Text() screen par words show karta hai. Center() apne child ko available space ke center mein rakhta hai.
