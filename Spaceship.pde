/*
  ___                      _    _      
 / __|_ __  __ _ __ ___ __| |_ (_)_ __ 
 \__ \ '_ \/ _` / _/ -_|_-< ' \| | '_ \
 |___/ .__/\__,_\__\___/__/_||_|_| .__/
     |_|                         |_|   
*/
class SpaceShip extends Floater {   


  private int lives = 3;


  SpaceShip() {
    corners = 31;
    xCorners = new int[corners];
    yCorners = new int[corners];


    xCorners[0] = 17;
    yCorners[0] = 0;
    xCorners[1] = 12;
    yCorners[1] = 4;
    xCorners[2] = 8;
    yCorners[2] = 6;
    xCorners[3] = 4;
    yCorners[3] = 7;
    xCorners[4] = -4;
    yCorners[4] = 7;
    xCorners[5] = -8;
    yCorners[5] = 6;
    xCorners[6] = -12;
    yCorners[6] = 4;
    xCorners[7] = -8;
    yCorners[7] = 6;
    xCorners[8] = -4;
    yCorners[8] = 7;
    xCorners[9] = -11;
    yCorners[9] = 13;
    xCorners[10] = -20;
    yCorners[10] = 13;
    xCorners[11] = -20;
    yCorners[11] = 7;
    xCorners[12] = -15;
    yCorners[12] = 7;
    xCorners[13] = -12;
    yCorners[13] = 4;
    xCorners[14] = -14;
    yCorners[14] = 2;
    xCorners[15] = -18;
    yCorners[15] = 2;
    xCorners[16] = -18;
    yCorners[16] = -2;
    xCorners[17] = -14;
    yCorners[17] = -2;
    xCorners[18] = -12;
    yCorners[18] = -4;
    xCorners[19] = -8;
    yCorners[19] = -6;
    xCorners[20] = -4;
    yCorners[20] = -7;
    xCorners[21] = -8;
    yCorners[21] = -6;
    xCorners[22] = -12;
    yCorners[22] = -4;
    xCorners[23] = -15;
    yCorners[23] = -7;
    xCorners[24] = -20;
    yCorners[24] = -7;
    xCorners[25] = -20;
    yCorners[25] = -13;
    xCorners[26] = -11;
    yCorners[26] = -13;
    xCorners[27] = -4;
    yCorners[27] = -7;
    xCorners[28] = 4;
    yCorners[28] = -7;
    xCorners[29] = 8;
    yCorners[29] = -6;
    xCorners[30] = 12;
    yCorners[30] = -4;


    myColor = color(255);
    myCenterX = width/2;
    myCenterY = height/2;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;


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


  public void hyperSpace () {
    superShip.accelerate(0);
    superShip.setDirectionX(0);
    superShip.setDirectionY(0);
    superShip.setPointDirection((int) (Math.random() * 360));
    superShip.setX((int)(Math.random() * width));
    superShip.setY((int)(Math.random() * height));
  }


}
