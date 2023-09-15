Square[] squares;
Square[] squares2;
Player p;
Walls[] walls;

int yValue = 0;
int yValue2 = 480;
int x, y;
int rad = 10;
boolean flag = true;
boolean flag2 = true;
boolean left, right, up, down;
String s;

float px = 0;
float py = 0;
float r = 10;

float sx = 50;
float sy = yValue;
float sw = 20;
float sh = 20;

float sx2 = 50;
float sy2 = yValue2;
float sw2 = 20;
float sh2 = 20;

import javax.swing.*;
String name = "player";

void setup() {
  size(500, 500);


  squares = new Square[7];
  squares2 = new Square[6];
  p = new Player();
  left = false;
  up = false;
  right = false;
  down = false;

  for (int i = 1; i <= squares.length; i++) {
    squares[i-1] = new Square((i*50)+(i*10), yValue, 20, 20);
  }

  for (int i = 1; i <= squares2.length; i++) {
    squares2[i-1] = new Square((i*60 + 30), yValue2, 20, 20);
  }

  walls = new Walls[4];
  //left wall
  walls[0] = new Walls(0, 0, 5, 500);
  //top wall
  walls[1] = new Walls(0, 0, 500, 5);
  //right wall
  walls[2] = new Walls(495, 0, 5, 500);
  //bottom wall
  walls[3] = new Walls(0, 495, 500, 5);
}

void draw() {

  background(255);

  updatePlayer();
  walls[0].display();
  walls[1].display();
  walls[2].display();
  walls[3].display();
  p.display();


  //squares row movement
  if (yValue >= height-25)
    flag = false;
  else if (yValue<=0)
    flag = true;

  if (flag==true)
    yValue += 7;
  else
    yValue -= 7;

  //sqaures2 row movement
  if (yValue2 >= height-25)
    flag2 = false;
  else if (yValue2<= 0)
    flag2 = true;

  if (flag2==true)
    yValue2 += 7;
  else
    yValue2 -= 7;


  for (int i=0; i < squares.length; i++) {
    squares[i].setY(yValue);
    squares[i].display();
  }

  for (int i=0; i < squares2.length; i++) {
    squares2[i].setY2(yValue2);
    squares2[i].display();
  }

  //create window boundaries
  //not using getters and setters here as when I did, the player would get stuck to the borders and not be able to move any further.
  if (p.xCoord < 10) {
    p.xCoord = p.xCoord + 10;
  }
  if (p.xCoord > 490) {
    p.xCoord = p.xCoord - 10;
  }
  if (p.yCoord < 10) {
    p.yCoord = p.yCoord + 10;
  }
  if (p.yCoord > 490) {
    p.yCoord = p.yCoord - 10;
  }

  //display 'you win' message if the player gets tio the other side of the screen.
  if (p.xCoord >= 485) {
    name = JOptionPane.showInputDialog(null, "Congratulations player, what is your name?", name);
    p.xCoord = 10;
    p.yCoord = 250;
  }
  if (name.length() > 10)
  {
    name = name.substring(0, 10);
  }
}

//allowing the arrow keys to control the player's movement
void keyPressed() 
{
  if (keyCode == RIGHT)
  {
    if (p.getXCoord()<=490)
    {
      right = true;
    } else {
      right = false;
    }
  } else if (keyCode == LEFT)
  {
    if (p.getXCoord()>=0)
    {
      left = true;
    } else {
      left = false;
    }
  } else if (keyCode == DOWN)
  {
    if (p.getYCoord() <=490)
    {
      down = true;
    } else {
      down = false;
    }
  } else if (keyCode == UP)
  {
    if (p.getYCoord()>=0)
    {
      up = true;
    } else {
      up = false;
    }
  }
}

void keyReleased() {
  if (keyCode == LEFT)
  {
    left = false;
  } else if (keyCode == UP)
  {
    up = false;
  } else if (keyCode == RIGHT)
  {
    right = false;
  } else if (keyCode == DOWN)
  {
    down = false;
  }
}

//updating the player's position in relation to the arrow keys being pressed or not
void updatePlayer() {
  if (left == true)
  {
    p.setXCoord(p.getXCoord()-4);
  }
  if (right == true)
  {
    p.setXCoord(p.getXCoord()+4);
  }
  if (up == true)
  {
    p.setYCoord(p.getYCoord()-4);
  }
  if (down == true)
  {
    p.setYCoord(p.getYCoord()+4);
  }
}
