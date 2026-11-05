
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




## structure
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());   // flutter ko batana ha kon si widget se start krna h
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {   //Batata hai screen par kaunsa UI banana hai
    return MaterialApp(
      home: Scaffold(
        body: Text("Hello"),
      ),
    );
  }
}


### Stateless vs Stateful
StatelessWidget
Example: fixed heading, icon grid, simple profile card.

UI ko change karne ke liye apni internal changing state manage nahi kar raha.

StatefulWidget
Example: counter button, checkbox, changing score.

Jab data change ho aur us change ke mutabiq UI update karna ho, to StatefulWidget use kar sakte ho.


Important: Stateless widget ka matlab ye nahi ke screen kabhi change hi nahi ho sakti. Parent se new data milne par bhi rebuild ho sakti hai. Bas ye khud changing state manage nahi karti.


### SafeArea and Notch
 Modern phones have camera cutouts, notches, status bars and system UI areas.
SafeArea helps prevent your content from being placed underneath those areas.
Scaffold(
  body: SafeArea(
    child: Center(
      child: Text("Safe content"),
    ),
  ),
)

also control individual
SafeArea(
  top: true,
  bottom: true,
  left: true,
  right: true,
  child: Text("Hello"),
)
#### Remember: SafeArea doesn't create your screen layout. It adds safe padding around its child where needed.



### buildBox() 
buildBox is a function that returns a Flutter Widget.
Widget means it returns a Flutter widget.
Widget is the return type.
buildBox is the function name.
return Container() returns a widget.

Widget buildBox(IconData icon, String title) {
  return Container(
    child: Text(title),
  );
}
