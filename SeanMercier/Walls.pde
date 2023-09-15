class Walls {
  float x, y, w, h;
  Walls(float sx, float sy, float sw, float sh) {
    x = sx;
    y = sy;
    w = sw;
    h = sh;
  }
  //display rectangle with the four floats x, y, w and h
  void display() {
    fill(144);
    rect(x, y, w, h);
  }
}
