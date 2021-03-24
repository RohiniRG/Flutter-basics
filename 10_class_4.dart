// GETTER and SETTER

class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set botton(num value) => top = value - height;
}

void main() {
  var Rect = Rectangle(12, 10, 20, 30);
  print(Rect.right);
  Rect.right = 50;
  print(Rect.left);
}
