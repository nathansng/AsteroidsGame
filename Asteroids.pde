/*
    _       _               _    _    
   /_\   __| |_ ___ _ _ ___(_)__| |___
  / _ \ (_-<  _/ -_) '_/ _ \ / _` (_-<
 /_/ \_\/__/\__\___|_| \___/_\__,_/__/
                                      
*/
public class Asteroids extends Floater{
  private int size = (int) (Math.random() * 7);
  private int rotateSpeed = (int) (Math.random() * 5) - 2;
  private double Yspeed = (double) (Math.random() * 5) - 2;
  private double Xspeed = (double) (Math.random() * 5) - 2;


  private int x = 0;
  private int y = 0;


  Asteroids () {
    corners = 6;
    xCorners = new int[corners];
      yCorners = new int[corners];


      xCorners[0] = -5 * size;
      yCorners[0] = 5 * size;
      xCorners[1] = 5 * size;
      yCorners[1] = 5 * size;
      xCorners[2] = 8 * size;
      yCorners[2] = 0 * size;
      xCorners[3] = 5 * size;
      yCorners[3] = -5 * size;
      xCorners[4] = -5 * size;
      yCorners[4] = -5 * size;
      xCorners[5] = -8 * size;
      yCorners[5] = 0 * size;


      myColor = color(100);
      myCenterX = x;
      myCenterY = y;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;


      spawn();
  }


  public void spawn () {
    int area = (int)(Math.random() * 4);


    if (area == 0) {
      x = (int)(Math.random() * 50) - 50;
      y = (int)(Math.random() * height);
    } else if (area == 1) {
      x = (int)(Math.random() * width);
      y = (int)(Math.random() * 50) - 50;
    } else if (area == 2) { 
      x = (int)(Math.random() * 50) + width;
      y = (int)(Math.random() * height);
    } else if (area == 3) {
      x = (int)(Math.random() * width);
      y = (int)(Math.random() * 50) + height;
    }
  }


  public void setX(int x) {
      myCenterX = x;
  };  


    public int getX() {
      return (int)myCenterX;
  };   


    public void setY(int y) {
      myCenterY = y;
    };   


    public int getY() {
      return (int)myCenterY;
    };   


    public void setDirectionX(double x) {
      myDirectionX = x;
    };   


    public double getDirectionX() {
      return myDirectionX;
    };   


    public void setDirectionY(double y) {
      myDirectionY = y;
    };   


    public double getDirectionY() {
      return myDirectionY;
    };   


    public void setPointDirection(int degrees) {
      myPointDirection = degrees;
    };   
  
    public double getPointDirection() {
      return myPointDirection;
    }; 


    public void move () {
      rotate(rotateSpeed);
      super.move();
      setDirectionX(Xspeed);
      setDirectionY(Yspeed);
    }




    //This is how to set the speed and direction of the asteroids
    public void setXSpeed (double speed) {
      Xspeed = speed;
    }


    public void setYSpeed (double speed) {
      Yspeed = speed;
    }


    public int getSize () {
      return size;
    }




}
