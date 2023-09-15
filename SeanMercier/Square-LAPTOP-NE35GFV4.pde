public class Square{
  
  private float xCoord, yCoord, aLength, aHeight;
  private color colour;
  
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
  
  public Square(float xCoord, float yCoord, float aLength, float aHeight, color colour)
  {
   this.xCoord = xCoord;
   this.yCoord = yCoord;
   this.aLength = aLength;
   this.aHeight = aHeight;
   this.colour = colour;
  }

void display()
{
  rect(xCoord, yCoord, aLength, aHeight);
}

public void setColour(color colour){
  this.colour = colour;
}

public void setY(int value){
  this.yCoord = value;
}
}
