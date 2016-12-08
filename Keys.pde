/*
  _  __            
 | |/ /___ _  _ ___
 | ' </ -_) || (_-<
 |_|\_\___|\_, /__/
           |__/    
*/
public void keyPressed () {
  if (scene == 1) {
    if (key == 32) {
      superShip.setX(width/2);
      superShip.setY(height/2);
      superShip.accelerate(0);
      superShip.setPointDirection(0);
      superShip.setDirectionX(0);
      superShip.setDirectionY(0);
      superShip.accelerate(0);


      points = 0;


      scene = 2;


      isAccelerating = false;
      isRotateRight = false;
      isRotateLeft = false;
      isHyperspace = false;
      isBackwards = false;
      isShooting = false;


      newHighScore = false;
    }


    if (key == 'q') {
      movingStars = true;
    }
    if (key == 'e') {
      movingStars = false;
    }
  }


  if (scene == 2) {
    if (key == 'p') {
      superShip.setX(width/2);
      superShip.setY(height/2);
      superShip.accelerate(0);
      superShip.setPointDirection(0);
      superShip.setDirectionX(0);
      superShip.setDirectionY(0);
      scene = 1;
    }


    if (key == 'w') {
      isAccelerating = true;
    }


    if (key == 'd') {
      isRotateRight = true;
    }


    if (key == 'a') {
      isRotateLeft = true;
    }


    if (key == 'f') {
      isHyperspace = true;
    }


    if (key == 's') {
      isBackwards = true;
    }




    if (key == 'e') {
      frameRate(20);
    }


    if (key == 'g') {
      scene = 3;
    }


    if (key == 't') {
      scene = 4;
    }


    if (key == 32) {
      isShooting = true;
    }
  }


  if (scene == 3) {
    if (key == 32) {
      scene = 1;
    }
  }


  if (scene == 4) {
    if (key == 32) {
      scene = 2;
    }
  }
  
}


public void keyReleased () {
  if (scene == 2) {
    if (key == 'w') {
      isAccelerating = false;
    } 
    if (key == 'd') {
      isRotateRight = false;;
    }
    if (key == 'a') {
      isRotateLeft = false;
    }
    if (key == 'f') {
      isHyperspace = false;
    }


    if (key == 's') {
      isBackwards = false;
    }
    
    if (key == 'e') {
        frameRate(60);
    }


    if (key == 32) {
      isShooting = false;
    }
  }
}
