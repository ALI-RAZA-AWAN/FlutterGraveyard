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


