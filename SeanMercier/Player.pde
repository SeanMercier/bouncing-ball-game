class Player {
  //properties
  private float xCoord, yCoord;
  float d;

  //constructors
  Player() {
    xCoord = 10;
    yCoord = height/2;
    d = 20;
  }

  //methods

  void update() {
  }

  void display() {
    fill(0, 0, 255);
    ellipse(xCoord, yCoord, d, d);
  }

  //setters
  public void setXCoord(float xcoord) {
    if (xCoord >= 10 && xCoord <=490)
      this.xCoord = xcoord;
  }

  public void setYCoord(float ycoord) {
    if (yCoord >= 10 && yCoord <=490)
      this.yCoord = ycoord;
  }

  //getters
  public float getXCoord() {
    return this.xCoord;
  }

  public float getYCoord() {
    return this.yCoord;
  }
}
