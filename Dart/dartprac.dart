class MenuItem{
    String title;
    double price;

 // MenuItem(String title, double price){} instead of this w e use this keyword.

 MenuItem(this.title,this.price);  
}
void main(){
    var noodles = MenuItem("veg noodles", 9.99);
    var pizza = MenuItem("volcano pizza",12.99);

    print(noodles.price);
    print(pizza.title);
}