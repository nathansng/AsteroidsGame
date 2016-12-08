/*
  ___ _               
 / __| |_ __ _ _ _ ___
 \__ \  _/ _` | '_(_-<
 |___/\__\__,_|_| /__/
                      
*/
class Star {
  private int myX, myY, myColor;


  Star (int x, int y) {
    myX = x;
    myY = y;


    myColor = color(255, 255, 0);
  }
  
  public void show() {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 5, 5);
  }


  public void move() {
    myX += -(superShip.getDirectionX() / 5);
    myY += -(superShip.getDirectionY() / 5);


    if (myX > width) {
      myX = 0;
      myY = (int) (Math.random() * height);
    }
    if (myX < 0) {
      myX = width;
      myY = (int) (Math.random() * height);
    }
    if (myY > height) {
      myY = 0;
      myX = (int) (Math.random() * width);
    }
    if (myY < 0) {
      myY = height;
      myX = (int) (Math.random() * width);
    }


    if (isHyperspace == true && coolDown >= coolDownTime) {
      myX = (int) (Math.random() * width);
      myY = (int) (Math.random() * height);
    }


  }


  public void setX (int x) {
    myX = x;
  }


  public void setY (int y) {
    myY = y;
  }


}
