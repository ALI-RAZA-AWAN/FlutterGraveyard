class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;
Camera(this._id, this._brand, this._color, this._price);

  int get id => _id;
  set id(int value) => _id = value;
  String get brand => _brand;
  set brand(String value) => _brand = value;
  String get color => _color;
  set color(String value) => _color = value;
  double get price => _price;
  set price(double value) => _price = value;

  void display() {
    print("ID: $_id");
    print("Brand: $_brand");
    print("Color: $_color");
    print("Price: $_price");}}

void main() {
  Camera c1 = Camera(1, "Canon", "Black", 50000);
  Camera c2 = Camera(2, "Sony", "Silver", 60000);
  Camera c3 = Camera(3, "Nikon", "Black", 70000);
  c1.display();
  c2.display();
  c3.display();
}