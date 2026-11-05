void main() {
  Map<String, int> pizzas = {
    "Margherita": 1200,
    "Pepperoni": 1500,
    "Fajita": 1400
  };

  String order = "Pepperoni";
  int quantity = 2;

  if (pizzas.containsKey(order)) {
    int total = pizzas[order]! * quantity;
    print("Total price: Rs. $total");
  } else {
    print("Pizza is not available");
  }
}