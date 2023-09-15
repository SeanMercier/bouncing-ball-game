Spot[] spots;
Square[] squares;
int yValue = 0;
boolean flag = true;

void setup() {
  size(500, 500);

  spots = new Spot[4];
  squares = new Square[5];

  for (int i = 1; i <= squares.length; i++) {
    squares[i-1] = new Square((i*50)+(i*10), 50, 50, 25);
  }

  for (int i = 1; i <= spots.length; i++) {
    spots[i-1] = new Spot(i*50, i*100, i*30);
  }
}

void draw() {

  background(255);
  /*for (int i=0; i < spots.length; i++){
   spots[i].display();
   spots[i].colour(mouseX, mouseY, 0);
   }*/
  if (yValue >= height-25)
    flag = false;
  else if (yValue<= 0)
    flag = true;

   if (flag==true)
      yValue+=5;
    else
    yValue-=5;
    
  for (int i=0; i < squares.length; i++) {

 
    
      squares[i].setY(yValue);
    squares[i].display();
    squares[i].setColour(color(mouseY, mouseX, 0));
  }
}
