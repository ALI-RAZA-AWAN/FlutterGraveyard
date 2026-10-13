## dart notes 

language used to make cross platform applications also it's a statically typed language which means you can't give a integer value to string typed variable.


### void main 
void main is the required function when writting code in Dart. because its kickstart the application 
void main(){}

### statically typed language

void main(){
    var name= "Ali";  // first time with var type variable we give it any type of language but after giving it then we have to pursue that type forever
    like now if i say name=123; its wrong

    print(name);
    print("My name is "+ name); 
    so if use name var in string not with + so we can use $ sign with that var
    print("My name is $name");

    // also the final or const type var you can't give their values after giving at once.

    print(age + 10); add 10 in age value and print
}

### type annotations

String, bool, int , double, lists, set , map

#### null safety 
so if we have int points;
then print it print(points); it gives error that no value given 

but if we want it null then we just put ? with data type just like
int? points;
print(points); it will print null and no error.

### functions

if i write function greet also the main function

void main(){}
greet(name, age){
    return "my name is $name and am $age years old";
}

but here the problem is we can pass any arguments to parameters like 

greet(10,false) bcz no specify the datatype and also in case of return bcz function has no specific datatype to accept we may write
return false; which gives no error. 

so in that case we should write their datatypes to get rid of these mistakes.
String greet(String name, int age){
 return "my name is $name and am $age years old";
}
 

### positional and named arguments

so in positional argumenst you take care of position 

String greet(String name,int age); you have to give ("ali",10) in that sequence otherwise it gives the err.

#### in case of named arguments 

String greet({String? name, required int age});

// here ? means if value pass then ok otheriwse give null to it and required means you have to pass that value. The way to give value is also diff 

greet(name: "ali", age:10); // here sequence not matter its ok if we write age first and then name. and even we dont write name like greet(age:10); 


### Lists 

basically its similar to array and we gonna store data in it but keep in mind, it allow only same datatype value to store but it allow duplicate values.

List<int> Scores=[1,2,3];

#### print (Scores[0]);

#### for value change at any index
 Scores[0]=12;

 #### to add or remove value 
also write the value not index 
add value at end 
 Scores.add(20);  
 Scores.remove(20); // also another one is removeLast

 to find the index of value Scores.indexOf(20);

### sets

Set<String> names = {"mario","ligui", "peach"};

// dont allow to change the datatype in set and also dont allow to set dupliacte value 

names.add("ali"); and if we enter value which is already in set then it will not enter because it dont allow duplicates

name.remove(""); .lenght();

### control flow

List<int> scores=[50,12,3,4,23];

for(int i=0;i>score.length();i++){
    print(score[i]);
}

##### instaed of this we gonna choose another way of for-loop

for(int score in scores){
    print("The score is $score");
}

##### another way 
for(int score in scores.where((s)=> s>50)){
    print("The score is $score");

    // so here without using if conditions we filter the scores greater than 50.
}

## Maps

void main(){
   ##### var planets ={};
    // this is empty map not a set bcz if you want empty set you write Set<int> planets= {}; and for empty map 
    Map<dynamic,dynamic> planets this representation come.

   ##### var panets = {
    "first": "mercury"
   } // now present Map<String,String> planets and we decide any datatype to wriet like 1:"sdfs" or "kdshf":2

#### for specific write
  Map<int, String> planets = {};
// here you bound to write value in that datatypes

Map<String, String> planet= {
    "first":"mercury",
    "second":"venus",
    "third":"earth",
    "fourth":"mars"
};
}

##### to print this print(planets);

##### to print a specific print(planet["fourth"]); it gives mars

##### to update planets["fourth"]= "asb";

##### to ADD value planet["fifth"]="jupiter";
##### to remove planets.remove("fifth"); // write key like first or sec and not value like earth or mars

#### diff properties
print(planets.containKey("fifth"));  // true/false


### classes

void main(){
     var noodles = MenuItem();
     var pizza = MenuItem();

}

class MenuItem() {
    String title = "Pizza";
    double price = 9.99;
}

#### in that code there is a issue it runs but the noodles and pizza has same values assign. so better one is below:

here comes constructor

class MenuItem{
    String title;
    double price;

 // MenuItem(String title, double price){} instead of this w e use this keyword.

 MenuItem(this.title,this.price);  
}
void main(){
    var noodles = MenuItem("veg noodles", 9.99);
    var pizza = MenuItem("volcano pizza",12.99);

    print(noodles.price); // 9.99
    print(pizza.title);  // 12.99
}

### extend classes

class Pizza extends MenuItems{
    List<String> topping; 
}
 // in that there are many issues like here we create pizza constructor and then there is a conflict in main class so we use super keyword see below the correct code:

 class MenuItem{
    String title;
    double price;

 // MenuItem(String title, double price){} instead of this w e use this keyword.

 MenuItem(this.title,this.price);  

 String format(){
    return "$title --> $price";
 }
}
void main(){
    var noodles = MenuItem("veg noodles", 9.99);
    var pizza = Pizza(["mushrooms","peppers"],"veg pizza",12.99);

    print(noodles.price);
    print(pizza.title);
     print(noodles.format());
      print(pizza.format());
}

class Pizza extends MenuItem{
  List<String>toppings;
  Pizza (this.toppings, String title, double price): super(title,price);
    // we also write it as 
 Pizza (this.toppings, super.title, super.price);

### method overloading write @override

 String format(){
   var formatedtopping = "contain";

   for (String t in toppings){
    formatedtopping = "$formatedtopping $t";
   }
   return "$title --> PKR$price --> $formatedtopping";
 }


}




