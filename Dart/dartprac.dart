
void main(){
    var noodles = MenuItem("veg noodles", 9.99);
    var pizza = Pizza(["mushrooms","peppers"],"veg pizza",12.99);

    print(noodles.price);
    print(pizza.title);
    print(pizza.toppings);
    print(noodles.format());
    print(pizza.format());
}
class MenuItem{
    String title;
    double price;

 // MenuItem(String title, double price){} instead of this w e use this keyword.

 MenuItem(this.title,this.price);  
 String format(){
    return "$title --> $price";}
}

class Pizza extends MenuItem{
  List<String>toppings;
  // Pizza (this.toppings, String title, double price): super(title,price);
  // we also write it as 
 Pizza (this.toppings, super.title, super.price);

@override
 String format(){
   var formatedtopping = "contain";

   for (String t in toppings){
    formatedtopping = "$formatedtopping $t";
   }
   return "$title --> PKR$price --> $formatedtopping";
 }

}