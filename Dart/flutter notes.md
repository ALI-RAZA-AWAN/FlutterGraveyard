
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
Imagine you have a screen displaying:
Ali Raza
Flutter Developer
Welcome to my profile!

Does this screen need to change something by itself?
No. It simply displays information.
This is a good example of a StatelessWidget.

StatelessWidget = A widget whose own internal state doesn't change over time.
Example: counter button, checkbox, changing score.

### code:
class MyProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text("Ali Raza");
  }

}

### code explanation:
class creates a class.
MyProfile is our class name.
extends StatelessWidget means we're creating a Flutter StatelessWidget.
@override means we're implementing a method inherited from the parent class.
Widget means this method returns a widget.
build() is responsible for describing the UI.
BuildContext provides information about where this widget exists in the widget tree.

Jab data change ho aur us change ke mutabiq UI update karna ho, to StatefulWidget use kar sakte ho.


Important: Stateless widget ka matlab ye nahi ke screen kabhi change hi nahi ho sakti. Parent se new data milne par bhi rebuild ho sakti hai. Bas ye khud changing state manage nahi karti.


## importnat reuseability:
the upper we write a class my profile so now we use this profile in another widget and functions also reuse like that
#### code
Scaffold(
  body: MyProfile(),
)

### stateful widget:
imagine punchy has a counter and everytime press it increase the shown data on runtime.
StatefulWidget = A widget that can manage changing data (state) and update its UI when that state changes.

#### code:
class MyCounter extends StatefulWidget {
  @override
  State<MyCounter> createState() {
    return _MyCounterState();
  }}

createState() creates the state object for our widget.
State<MyCounter> tells Dart that this state belongs to MyCounter.
_MyCounterState() creates and returns that state object.


#### Look at the second class:
class _MyCounterState extends State<MyCounter> {
  int count = 0;
 @override
  Widget build(BuildContext context) {
    return Text("$count");
  }}

In that widget we see that first a class then extends with statefullwidget and then in that class make a state by State<class name which it belongs> createState(){
  return _MyCounterState();  // this manage the state
} 


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




### initState():
when you open app first time and you want before displaying the screen flutter initialize data, prepare system and load initial info then we use init state and it run fro once when statefullwidget state object is created.

initState()	                build()
Runs once per State object	Can run multiple times
Used for initial setup	    Describes UI
Doesn't return a widget    	Returns a widget
Return type is void	        Return type is Widget


### setState():
Changing a variable alone does not tell Flutter to rebuild the UI.That's why we need setState().
setState() tells Flutter that the State object has changed and its UI needs to be rebuilt.
#### code
setState(() {
  count = count + 1;
});

### code of a proper example
class MyCounter extends StatefulWidget {
  @override
  State<MyCounter> createState() {
    return _MyCounterState();
  }
}

class _MyCounterState extends State<MyCounter> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("$count"),

          ElevatedButton(
            onPressed: () {
              setState(() {
                count = count + 1;
              });
            },
            child: Text("Add Visit"),
          ),
        ],
      ),
    );
  }
}

### dispose()
In simple words:
- initState() → Initialize things.
- build() → Display UI.
- setState() → Update UI.
- dispose() → Clean up resources.
#### code
@override
void dispose() {
  controller.dispose();

  super.dispose();
}


### Container
Think of a Container as a box that can hold another widget.

You can customize its:
- Width
- Height
- Background color
- Padding
- Margin
- Border
- Border radius
- Alignment

A Container accepts one child, not a children list.If you want multiple widgets inside it, you can use a Column or Row as its child.