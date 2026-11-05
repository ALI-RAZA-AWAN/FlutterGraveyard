void main() {
  List<Map<String, dynamic>> restaurants = [
    {"name": "Ali Cafe",
      "specialty": "Coffee",
      "ratings": [4, 5, 3]},
    { "name": "Pizza House",
      "specialty": "Pizza",
      "ratings": [5, 4, 5]
    },
    {"name": "Burger Point",
      "specialty": "Burgers",
      "ratings": [3, 4, 4]
    }];

  for (var r in restaurants) {
    List<int> ratings = r["ratings"];
    double total = 0;

    for (int rating in ratings){
      total = total + rating;}
    r["avgRating"] = total / ratings.length;
  }

  print(restaurants);
}