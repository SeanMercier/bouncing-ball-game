public class Square {
  //properties
  private float xCoord, yCoord, aLength, aHeight;

  //constructors
  public Square()
  {
  }

  public Square(float xCoord, float yCoord, float aLength, float aHeight)
  {
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    this.aLength = aLength;
    this.aHeight = aHeight;
  }

  //methods
  void display()
  {
    fill(255, 0, 0);
    rect(xCoord, yCoord, aLength, aHeight);
  }
  //setters
  public void setY(int value) {
    this.yCoord = value;
  }

  public void setY2(int value2) {
    this.yCoord = value2;
  }
}
