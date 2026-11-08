
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

#### 1. Padding
Padding means space inside the Container, between its boundary and its child.

Container(
  padding: EdgeInsets.all(20),
  color: Colors.teal,
  child: Text("Hello Punchy"),
)  // EdgeInsets.all(20) means 20 logical pixels of padding on all four sides. and other ways
EdgeInsets.all(20)
EdgeInsets.symmetric(horizontal: 20, vertical: 10)
EdgeInsets.only(left: 10, top: 20)

##### 2. Margin
Margin means space outside the Container, separating it from surrounding widgets.

Container(
  margin: EdgeInsets.all(20),
  color: Colors.teal,
  child: Text("Hello Punchy"),
)

#### 3. Alignment
Alignment controls where the child is positioned inside the Container.
Container(
  width: 200,
  height: 150,
  alignment: Alignment.center,
  child: Text("Punchy"),
)
Value	                Position
Alignment.center	    Center
Alignment.topLeft	    Top left
Alignment.topRight	  Top right
Alignment.bottomLeft	Bottom left
Alignment.bottomRight	Bottom right
Alignment.centerLeft	Center left

##### 4. Decoration
Decoration lets you customize the Container's appearance using BoxDecoration.
Container(
  width: 200,
  height: 100,
  decoration: BoxDecoration(
    color: Colors.teal,
    borderRadius: BorderRadius.circular(15),
    border: Border.all(
      color: Colors.black,
      width: 2,
    ),
  ),
  child: Text("Punchy"),
)

### Box shadow
Container(
  width: 200,
  height: 100,
  decoration: BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 10,
        spreadRadius: 2,
        offset: Offset(2, 4),
      ),
    ],
  ),
)


#### Constraints control the allowed size of a Container.
Container(
  constraints: BoxConstraints(
    minWidth: 100,  
    maxWidth: 300,
    minHeight: 50,
    maxHeight: 150,
  ),
  child: Text("Punchy"),
)

### practise 
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home:Scaffold(
        Container(
          width:250,
          height:120,
          padding: EdgeInsets.all(15),
          boxDecoration:BoxDecoration(
              color:Colors.teal,
            borderRadius:BorderRadius.circular(12),
          ),
          child: Text("Punchy"),

        ),
      ),
    ),
  );
}


#### some questions:
Why put color: Colors.teal inside BoxDecoration?

Because when we use decoration: BoxDecoration(), the background color belongs inside BoxDecoration.


### Text Widget
Text("Welcome to Punchy")
#### A. style
Used to customize the appearance of text.
Text(
  "Welcome to Punchy",
  style: TextStyle(
    fontSize: 24,
    color: Colors.teal,
    fontWeight: FontWeight.bold,
  ),
)

##### textAlign
Controls horizontal text alignment.
textAlign: TextAlign.center


Other values include:
- TextAlign.left
- TextAlign.right
- TextAlign.start
- TextAlign.end
- TextAlign.justify

##### Limits how many lines of text can appear.
maxLines: 2

##### overflow
Controls what happens when text doesn't fit.
overflow: TextOverflow.ellipsis
This adds ... when text is too long.


### Icon Widget
Icon(Icons.home)

Icon is the Flutter widget.
Icons.home specifies which icon to display.

also properties
Icon(
  Icons.card_giftcard,
  size: 35,
  color: Colors.teal,
)

### ElevatedButton
ElevatedButton(
  onPressed: () {},
  child: Text("Join Card"),
)

##### also style 
ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.teal,
    foregroundColor: Colors.white,
    padding: EdgeInsets.all(15),
  ),
  child: Text("Join Card"),
)

##### some properties
Property	           Purpose
backgroundColor	     Button background
foregroundColor	     Text and icon color
padding	             Internal spacing
elevation	           Shadow depth
minimumSize	         Minimum button size
shape	               Button shape

### Badge 
A Badge displays a small notification indicator or count on another widget.

##### code
Badge(
  label: Text("3"),
  child: Icon(Icons.notifications),
)
Important properties:
- label: Displays a number or text.
- child: The widget on which the badge appears.
- backgroundColor: Changes badge background.
- textColor: Changes badge text color.
- isLabelVisible: Shows or hides the label.


### ListTile
ListTile is a ready-made horizontal layout for displaying information in a list.

#### code
ListTile(
  leading: Icon(Icons.coffee),
  title: Text("Coffee House"),
  subtitle: Text("Collect 5 punches"),
  trailing: Icon(Icons.arrow_forward),
  onTap: () {
    print("Business clicked");
  },
)

##### Important: ListTile arranges these elements for you. You don't need to manually create a Row and Column for this common list layout.

### CircleAvatar
CircleAvatar displays a circular image or icon, commonly used for profile pictures.
CircleAvatar(
  radius: 30,
  backgroundColor: Colors.teal,
  child: Icon(
    Icons.person,
    color: Colors.white,
  ),
)

### Image
The Image widget displays pictures in your application.
##### A. Network image
Image.network(
  "https://example.com/photo.jpg",
  width: 150,
  height: 150,
)

##### Asset image
Loads an image stored inside your project.
Image.asset(
  "assets/images/logo.png",
  width: 150,
)
#### Imp: You must also register asset folders in pubspec.yaml.

Common BoxFit values:
- BoxFit.cover — fills the available space, possibly cropping.
- BoxFit.contain — shows the entire image.
- BoxFit.fill — stretches to fill the dimensions.

### AppBar
AppBar is the top navigation bar of a screen.
AppBar(
  title: Text("Punchy"),
  backgroundColor: Colors.teal,
  foregroundColor: Colors.white,
  centerTitle: true,
  elevation: 2,
)
###### Important properties:
Property	          Purpose
title	              Title displayed in AppBar
backgroundColor	    Background color
foregroundColor	    Title and icon color
centerTitle	        Centers the title
elevation	          Shadow depth
actions	            Widgets on the right side
leading           	Widget on the left side

#### example of actions:
AppBar(
  title: Text("Punchy"),
  actions: [
    Icon(Icons.notifications),
    Icon(Icons.person),
  ],
)


### Drawer
A Drawer is a side navigation panel that usually opens from the left side of the screen.

#### code
Scaffold(
  appBar: AppBar(
    title: Text("Punchy"),
  ),

  drawer: Drawer(
    child: Column(
      children: [
        DrawerHeader(
          child: Text("Welcome to Punchy"),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        ListTile(
          leading: Icon(Icons.card_giftcard),
          title: Text("Rewards"),
        ),
      ],
    ),
  ),
)
##### Important concepts:
- drawer is a property of Scaffold.
- Drawer creates the side panel.
- DrawerHeader creates its header section.
- ListTile creates individual navigation items.

### Row + Column
Row arranges its children horizontally (left to right).
Row(
  children: [
    Icon(Icons.home),
    Text("Home"),
    Icon(Icons.person),
  ],
)

Column arranges its children vertically (top to bottom).
Column(
  children: [
    Icon(Icons.home),
    Text("Home"),
    Icon(Icons.person),
  ],
)

##### Very important difference
Row	                       Column
Horizontal layout	         Vertical layout
Left to right	             Top to bottom
Main axis = Horizontal	   Main axis = Vertical
Cross axis = Vertical	     Cross axis = Horizontal

### MainAxis vs CrossAxis
Every Row and Column has two axes:
- MainAxis: The direction in which children are arranged.
- CrossAxis: The direction perpendicular to the MainAxis.
##### In a Row:
- MainAxis = Horizontal
- CrossAxis = Vertical
##### In a Column:
- MainAxis = Vertical
- CrossAxis = Horizontal

### MainAxisAlignment 
Controls how children are positioned along the MainAxis.
For example, in a Row, it controls horizontal positioning.
##### code
MainAxisAlignment.spaceEvenly

There are six important values:
1. start — Places children at the beginning.
123
2. end — Places children at the end.
                                123
3. center — Places children in the center.
              123
4. spaceBetween — Equal space between children, no extra space at the ends.
1              2                 3
5. spaceAround — Equal space around each child.

6. spaceEvenly — Equal space between children and at both ends.


###  CrossAxisAlignment
Controls child positioning along the CrossAxis.

For example, in a Row, it controls vertical positioning.
Important  values:
Value	     Meaning
start	     Beginning of cross axis
center	   Center
end	       End of cross axis
stretch	   Expand children across cross axis
baseline	 Align text baselines


### example of both axisalignment
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Icon(Icons.home),
    Text("Home"),
    Icon(Icons.person),
  ],
)
here:
mainAxisAlignment.center centers children horizontally.
crossAxisAlignment.start aligns them to the top of the Row's cross axis.

#### MainAxisSize
MainAxisSize controls how much space a Row or Column occupies along its MainAxis.

It has two values:

##### A. MainAxisSize.max
Takes the maximum available space along the MainAxis.
Column(
  mainAxisSize: MainAxisSize.max,
  children: [
    Text("Punchy"),
    Text("Loyalty App"),
  ],
)


##### B. MainAxisSize.min

Takes only the space required by its children.
Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    Text("Punchy"),
    Text("Loyalty App"),
  ],
)

##### Remember:
- max = maximum available space.
- min = minimum required space.

##### Center
Center places its child in the center of the available space.
Center(
  child: Text("Welcome to Punchy"),
)

### SizedBox
SizedBox is used to:
- Give a widget a specific width or height.
- Create empty space between widgets.

#### A. Set dimensions
SizedBox(
  width: 200,
  height: 100,
  child: Container(
    color: Colors.teal,
  ),
)


#### B. Create spacing
Column(
  children: [
    Text("Punchy"),
    SizedBox(height: 20),
    Text("Loyalty App"),
  ],
)


Here, SizedBox(height: 20) creates 20 pixels of vertical space.

### Expanded
Expanded tells a child of a Row or Column to take up the remaining available space along the MainAxis.

#### code
Row(
  children: [
    Icon(Icons.coffee),

    Expanded(
      child: Text("Coffee House"),
    ),

    Icon(Icons.arrow_forward),
  ],
)

#### Remember:
- In Row → Expanded takes remaining width.
- In Column → Expanded takes remaining height.


### Flexible
You already learned Expanded. Now understand how Flexible is different.
Both widgets work inside a Row or Column and help manage available space.
Expanded: Forces its child to fill the allocated space.

Flexible: Allows its child to use only the space it needs, up to the allocated space.

#### code
Row(
  children: [
    Flexible(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    ),
    Expanded(
      child: Container(
        height: 100,
        color: Colors.red,
      ),
    ),
  ],
)

#### imp
- Flexible allows the blue container to use less than its allocated space.
- Expanded makes the red container fill its allocated space.
Remember: Expanded is strict; Flexible is more relaxed.


#### stack
Imagine you want to show a notification badge on the top-right corner of a profile picture.
Normally, Row and Column arrange widgets beside or below each other.
But Stack places widgets on top of one another.
#### code
Stack(
  children: [
    CircleAvatar(
      radius: 40,
      backgroundColor: Colors.blue,
    ),

    Positioned(
      top: 0,
      right: 0,
      child: Icon(
        Icons.circle,
        color: Colors.red,
      ),
    ),
  ],
)

What's happening?
1. CircleAvatar is the bottom layer.
2. Icon is placed on top of it.
3. Positioned controls where the icon appears.


## Navigation
When a customer clicks the Rewards button, the app opens the Rewards Screen.When they press Back, they return to the Home Screen.This is called Navigation.
Navigator manages the screens (routes) of your Flutter application.

### Navigator.push()
push() opens a new screen on top of the current screen.

Example:
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => RewardsScreen(),
  ),
);

Understand each part:
- Navigator manages navigation.
- push() adds a new screen.
- context tells Flutter where this navigation is happening.
- MaterialPageRoute defines the new screen's route.
- builder creates the screen.
- RewardsScreen() is the screen we want to open.

### Navigator.pop()
pop() closes the current screen and returns to the previous screen.
Navigator.pop(context);
For example:
Home → push() → Rewards
Rewards → pop() → Home


### Passing Data Between Screens
class BusinessDetails extends StatelessWidget {
  final String businessName;

  BusinessDetails({required this.businessName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(businessName),
      ),
    );
  }
}
businessName stores the received business name.
final means it cannot be reassigned.
required means we must provide it when creating this screen.

##### Pass data using push()
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => BusinessDetails(
      businessName: "Coffee House",
    ),
  ),
);
Now the Details Screen receives "Coffee House" and displays it.

### Named Routes + pushNamed()
So far, we used MaterialPageRoute to navigate between screens.Flutter also provides another method: Named Routes.

#### Named Route
Instead of directly mentioning the screen class every time, we assign a name to each screen.
Screen	         Route name
Home Screen	     /
Rewards Screen	 /rewards
Profile Screen	 /profile

MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomeScreen(),
    '/rewards': (context) => RewardsScreen(),
    '/profile': (context) => ProfileScreen(),
  },
);

### Navigate using pushNamed()
Now instead of writing MaterialPageRoute, simply write:
##### Navigator.pushNamed(context, '/rewards');
To return:
##### Navigator.pop(context);

That's it!
Difference between both approaches
Normal navigation         	Named navigation
Navigator.push()	          Navigator.pushNamed()
Uses MaterialPageRoute	    Uses a registered route name
Directly specifies screen	  Uses route configuration

### Passing Data with Named Routes
You already learned how to pass data using MaterialPageRoute.

But what if we want to pass "Coffee House" using pushNamed()?

We use arguments.
#### 1. Pass arguments
Navigator.pushNamed(
  context,
  '/details',
  arguments: 'Coffee House',
);
Here, arguments carries the data to the next screen.
#### 2. Receive arguments
Inside the destination screen:
final businessName =
    ModalRoute.of(context)!.settings.arguments as String;

This retrieves the value passed through arguments.

Remember the difference:
- arguments → Sends data.
- ModalRoute.of(context) → Retrieves route information.
- settings.arguments → Gets the passed data.

### Route Configuration — Complete Example

We register all three routes:
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomeScreen(),
    '/rewards': (context) => RewardsScreen(),
    '/profile': (context) => ProfileScreen(),
  },
);

#### Navigate from home(home screen)
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/rewards');
              },
              child: Text("View Rewards"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Text("My Profile"),
            ),
          ],
        ),
      ),
    );
  }
}

### create reward screen
class RewardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Rewards"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Go Back"),
        ),
      ),
    );
  }
}

### ListView vs ListView.builder
Displays all the list using children that you provide.
ListView(
  children: [
    Text("Coffee House"),
    Text("Pizza House"),
    Text("Burger Point"),
  ],
)

### ListView.builder
Builds list items on demand as they're needed for display.
ListView.builder(
  itemCount: 5,
  itemBuilder: (context, index) {
    return Text("Business $index");
  },
)

###### Two important things:
1. itemCount: 5
Tells Flutter how many items are in the list.
2. itemBuilder
A function that creates each list item when needed.
3. index
Represents the position of the current item. It starts from 0.

### Remember this difference
ListView	                   ListView.builder
Uses predefined children	   Creates children through itemBuilder
Good for small, fixed lists	  Good for large ordynamic lists
You manually provide widgets	 Flutter builds items as needed

### code:
List<String> businesses = [
  "Coffee House",
  "Pizza Point",
  "Burger Lab",
];

ListView.builder(
  itemCount: businesses.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text(businesses[index]),
    );
  },
)

#### example proper
List<String> businesses = [
  "Coffee House",
  "Pizza Point",
  "Burger Lab",
];

ListView.builder(
  itemCount: businesses.length,
  itemBuilder: (context, index) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.store),
        title: Text(businesses[index]),
        subtitle: Text("Loyalty rewards available"),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  },
)


#### GridView.count
Flutter provides GridView.count to create a grid with a fixed number of columns.
GridView.count(
  crossAxisCount: 2,
  children: [
    Container(color: Colors.red),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.orange),
  ],
)

#### Understand these properties:
- crossAxisCount: 2 → Displays 2 columns.
- children → Contains the widgets you want to display.
- Each Container → Represents one grid item.

### GridView.builder
Just like ListView.builder, GridView also has a builder version.
Remember:
- ListView.builder → Builds items vertically.
- GridView.builder → Builds items in a grid.
### Example: Punchy business grid
List<String> businesses = [
  "Coffee House",
  "Pizza Point",
  "Burger Lab",
  "Sweet Shop",
  "Food Corner",
  "Cafe One",
];

GridView.builder(
  itemCount: businesses.length,
  gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),
  itemBuilder: (context, index) {
    return Card(
      child: Center(
        child: Text(businesses[index]),
      ),
    );
  },
)


#### Understand the new parts
1. gridDelegate
Controls how the grid is arranged.
2. SliverGridDelegateWithFixedCrossAxisCount
Tells Flutter to use a fixed number of columns.
3. crossAxisCount: 2
Displays two items in each row.
4. itemBuilder
Builds each item when needed, just like ListView.builder.


#### mainAxisSpacing and crossAxisSpacing
These control the gaps between grid items.
mainAxisSpacing: Vertical gap between rows.
crossAxisSpacing: Horizontal gap between columns.
##### code
GridView.builder(
  itemCount: businesses.length,
  gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 10,
    crossAxisSpacing: 10,
  ),
  itemBuilder: (context, index) {
    return Card(
      child: Text(businesses[index]),
    );
  },
)


### Chat UI

#### code of creating a custom widget of chatbubble
class ChatBubble extends StatelessWidget {
  final String message;

  const ChatBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
#### then call it 
ChatBubble(
  message: "Hello bro!",
)

#### and if multiple
Column(
  children: [
    ChatBubble(message: "Hello!"),
    ChatBubble(message: "How are you?"),
    ChatBubble(message: "I'm fine!"),
  ],
)

### ChatList
Imagine a messaging screen with 100 messages. Writing every ChatBubble manually would be difficult.

Instead, we can store messages in a List and use ListView.builder to display them.
#### code

List<String> messages = [
  "Hello!",
  "How are you?",
  "I'm fine!",
  "What are you doing?",
];

ListView.builder(
  itemCount: messages.length,
  itemBuilder: (context, index) {
    return ChatBubble(
      message: messages[index],
    );
  },
)



### Navigation UI

#### BottomNavigationBar
It allows users to switch between different sections of an app without opening a completely new navigation route every time.
#### Code: 

Scaffold(
  body: Center(
    child: Text("Home Screen"),
  ),

  bottomNavigationBar: BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: "Favorites",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Profile",
      ),
    ],
  ),
)


### Handling clicks with currentIndex and onTap
int selectedIndex = 0;

Scaffold(
  bottomNavigationBar: BottomNavigationBar(
    currentIndex: selectedIndex,

    onTap: (index) {
      setState(() {
        selectedIndex = index;
      });
    },

    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: "Favorites",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Profile",
      ),
    ],
  ),
)


### also chnage content through navbar
int selectedIndex = 0;

final List<Widget> screens = [
  Center(child: Text("Home Screen")),
  Center(child: Text("Favorites Screen")),
  Center(child: Text("Profile Screen")),
];

Scaffold(
  body: screens[selectedIndex],

  bottomNavigationBar: BottomNavigationBar(
    currentIndex: selectedIndex,
    onTap: (index) {
      setState(() {
        selectedIndex = index;
      });
    },
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: "Favorites",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Profile",
      ),
    ],
  ),
)


#### Top NavigationBar (AppBar)
You already learned AppBar previously. Now let's understand its role in navigation.

A top navigation bar appears at the top of the screen and can contain:
- A title
- Navigation actions
- Tabs (which we'll study separately)
- Menu or action icons
##### code
Scaffold(
  appBar: AppBar(
    title: Text("Punchy"),
    leading: Icon(Icons.menu),
    actions: [
      Icon(Icons.notifications),
      Icon(Icons.search),
    ],
  ),
  body: Center(
    child: Text("Home Screen"),
  ),
)

### Tabs — TabBar and TabBarView

#### What is TabBar?
TabBar displays the clickable tabs.
TabBar(
  tabs: [
    Tab(text: "Chats"),
    Tab(text: "Status"),
    Tab(text: "Calls"),
  ],
)

### What is TabBarView?
TabBarView displays the content associated with each tab.
TabBarView(
  children: [
    Center(child: Text("Chats Screen")),
    Center(child: Text("Status Screen")),
    Center(child: Text("Calls Screen")),
  ],
)

### Important: DefaultTabController
To connect TabBar and TabBarView, we can use DefaultTabController.
DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      title: Text("Messages"),
      bottom: TabBar(
        tabs: [
          Tab(text: "Chats"),
          Tab(text: "Status"),
          Tab(text: "Calls"),
        ],
      ),
    ),

    body: TabBarView(
      children: [
        Center(child: Text("Chats Screen")),
        Center(child: Text("Status Screen")),
        Center(child: Text("Calls Screen")),
      ],
    ),
  ),
)


- length: 3 means there are three tabs.
- bottom: TabBar(...) places tabs below the AppBar title.
- TabBarView contains three corresponding screens.


##### Real example using Punchy
Imagine your Punchy app.

BottomNavigationBar:
- Home
- Explore
- Wallet
- Profile
These are the main sections of your app.

TabBar inside Wallet:
- All Cards
- Active Cards
- Completed Cards
These are different categories within the Wallet section.


### TextField is a Flutter widget that allows users to type text.
TextField(
  decoration: InputDecoration(
    hintText: "Enter your name",
    labelText: "Name",
    border: OutlineInputBorder(),
  ),
)
But how do we access the text entered by the user?

##### We use TextEditingController.
Example: A user enters their name in Punchy, and we want to retrieve that name when they press a button.

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController nameController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              labelText: "Enter your name",
            ),
          ),

          ElevatedButton(
            onPressed: () {
              print(nameController.text);
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
}

##### 2. Understand three important things
A. Creating the controller
TextEditingController nameController =
    TextEditingController();

Creates a controller that can access the input text.

B. Connecting it to TextField
controller: nameController,
Connects the controller with the input field.

C. Getting the entered text
nameController.text
Returns whatever the user typed.

### Form and TextFormField
#### What is Form?
Form is a widget that groups multiple input fields together.

For example, a Punchy registration form:
- Name
- Email
- Password
- Submit button
Instead of treating every field separately, we can manage them together using Form.
##### 2. What is TextFormField?
You already learned TextField.
TextFormField is similar, but it is designed to work with Flutter's Form widget, especially for validation.

### Code
Form(
  child: Column(
    children: [
      TextFormField(
        decoration: InputDecoration(
          labelText: "Name",
        ),
      ),

      TextFormField(
        decoration: InputDecoration(
          labelText: "Email",
        ),
      ),

      ElevatedButton(
        onPressed: () {},
        child: Text("Register"),
      ),
    ],
  ),
)


Here:
- Form groups the fields.
- Each TextFormField creates an input.
- Column displays them vertically.
- Button is used to submit the form.

3. TextField vs TextFormField
TextField	                                TextFormField
Basic text input	                        Form-oriented text input
Can use a controller	                    Can use a controller
No built-in Form validation integration	  Supports Form validation
Works independently	                      Commonly used inside Form


### GlobalKey
GlobalKey allows us to access a widget's state from another part of the widget tree.
Think of it like a reference that lets us communicate with our Form.
2. Creating a GlobalKey
final _formKey = GlobalKey<FormState>();
Here:
- GlobalKey creates a unique key.
- FormState identifies the type of state we want to access.
- _formKey stores that key.
3. Connecting it to Form
final _formKey = GlobalKey<FormState>();

Form(
  key: _formKey,
  child: Column(
    children: [
      TextFormField(),
      TextFormField(),
    ],
  ),
)
Notice:
key: _formKey,


This connects our GlobalKey to the Form.
4. Accessing FormState
_formKey.currentState
This gives us access to the Form's state.
Later, we'll use:
_formKey.currentState!.validate();
This asks all the form fields to validate themselves.


### What is validation?
Validation means checking whether the user's input is correct before accepting it.

For example, in Punchy registration:
- Name should not be empty.
- Email should be in a valid format.
- Password should meet the required conditions.
If the input is incorrect, Flutter displays an error message.
######  Using the validator property
TextFormField provides a property called validator.

Example:
TextFormField(
  decoration: InputDecoration(
    labelText: "Name",
  ),

  validator: (value) {
    if (value == null || value.isEmpty) {
      return "Please enter your name";
    }

    return null;
  },
)


Understand the logic:
- validator checks the entered value.
- value contains the user's input.
- If the field is empty, it returns an error message.
- return null means validation passed.
Important rule:
Validator returns	Meaning
Error message	Validation failed
null	Validation passed



###### You already understand that validator checks whether the input is correct. But the question is: who calls that validator?

That's where GlobalKey comes in. It gives acces to that form for validation.
1. Imagine this situation
You have three fields:
- Name
- Email
- Password
And one Submit button.

When the user clicks Submit, you want Flutter to check all three fields.

But how will the Submit button access the Form and tell it to validate everything?

We use GlobalKey<FormState>.
#### 2. Understand the connection
final _formKey = GlobalKey<FormState>();


This creates a key that can access the Form's state.

We attach it to our Form:
Form(
  key: _formKey,
  child: Column(
    children: [
      TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Name required";
          }
          return null;
        },
      ),
    ],
  ),
)
Now the key is connected to that Form.
##### 3. How does the Submit button use it?
ElevatedButton(
  onPressed: () {
    if (_formKey.currentState!.validate()) {
      print("All fields are valid!");
    }
  },
  child: Text("Submit"),
)
### Let's break this important line:
_formKey.currentState!.validate()


Part	     Meaning
_formKey	  Our reference to the Form
currentState	Accesses that Form's state
validate()	Tells the Form to run its validators


### Form Submission
Now let's understand what happens after validation succeeds.
##### code
ElevatedButton(
  onPressed: () {
    if (_formKey.currentState!.validate()) {
      print("Registration Successful!");
    }
  },
  child: Text("Register"),
)

The logic is:
1. User clicks Register.
2. validate() checks all form fields.
3. If validation fails, error messages appear.
4. If validation succeeds, the code inside if executes.
Important: validate() returns a Boolean:
- true → All fields are valid.
- false → At least one field is invalid.

#### We'll create a simple Punchy registration form with:
- Name
- Email
- Password
- Validation
- Submit button
Complete example
### code
class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [

            TextFormField(
              decoration: InputDecoration(labelText: "Name"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Name is required";
                }
                return null;
              },
            ),

            TextFormField(
              decoration: InputDecoration(labelText: "Email"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email is required";
                }
                return null;
              },
            ),

            TextFormField(
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Password is required";
                }
                return null;
              },
            ),

            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print("Registration Successful!");
                }
              },
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
##### One important new property
obscureText: true,
This hides the password characters while the user types.


### 1. What is pubspec.yaml?
It's the configuration file of your Flutter project.
It tells Flutter important information about your application, such as:
- Project name
- Version
- Dependencies (external packages)
- Assets (images, fonts, etc.)
- SDK requirements

Suppose you want to use an external package in Punchy.
For example, an icon package or an HTTP networking package.
You add it under:
dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.0
Then run:
##### flutter pub get
This downloads and resolves the required packages.

flutter:
  uses-material-design: true

  assets:
    - assets/images/

  fonts:
    - family: CustomFont
      fonts:
        - asset: assets/fonts/custom_font.ttf


### dependencies 
dependencies:
  flutter:
    sdk: flutter

  http: ^1.2.0

  ##### After adding it, use it in your Dart file:
import 'package:http/http.dart' as http;
Now you can access functionality provided by the HTTP package.


