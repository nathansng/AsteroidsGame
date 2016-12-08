/*
 _______          __  .__                /\        
 \      \ _____ _/  |_|  |__ _____    ___)/  ______
 /   |   \\__  \\   __\  |  \\__  \  /    \ /  ___/
/    |    \/ __ \|  | |   Y  \/ __ \|   |  \\___ \ 
\____|__  (____  /__| |___|  (____  /___|  /____  >
        \/     \/          \/     \/     \/     \/ 
 
   _____            __                      .__    .___         ________                       
  /  _  \   _______/  |_  ___________  ____ |__| __| _/______  /  _____/_____    _____   ____  
 /  /_\  \ /  ___/\   __\/ __ \_  __ \/  _ \|  |/ __ |/  ___/ /   \  ___\__  \  /     \_/ __ \ 
/    |    \\___ \  |  | \  ___/|  | \(  <_> )  / /_/ |\___ \  \    \_\  \/ __ \|  Y Y  \  ___/ 
\____|__  /____  > |__|  \___  >__|   \____/|__\____ /____  >  \______  (____  /__|_|  /\___  >
        \/     \/            \/                     \/    \/          \/     \/      \/     \/ 
*/
 


SpaceShip superShip;


boolean isAccelerating = false;
boolean isBackwards = false;
boolean isRotateRight = false;
boolean isRotateLeft = false;
boolean isHyperspace = false;


boolean newHighScore = false;


boolean isShooting = false;


boolean movingStars = false;


boolean isCoolingDown = false;


int coolDownTime = 60;
int coolDown = coolDownTime;


int lives = 3;


Star [] stars = new Star [50];


ArrayList <Asteroids> asteroids = new ArrayList <Asteroids> ();


ArrayList <Bullets> bullets = new ArrayList <Bullets> ();


int scene = 1;


int energy = 100;


int points = 0;


int highScore = 0;

/*
  ___      _             
 / __| ___| |_ _  _ _ __ 
 \__ \/ -_)  _| || | '_ \
 |___/\___|\__|\_,_| .__/
                   |_|   
*/
public void setup() {
  size(700, 700);
  background(0);
  superShip = new SpaceShip();


  for (int i = 0; i < stars.length; i ++) {
    stars[i] = new Star ((int)(Math.random() * width), (int)(Math.random() * height));
  }


  for (int i = 0; i < 30; i ++) {
    asteroids.add(i, new Asteroids());
  }


}

/*
  ___                  
 |   \ _ _ __ ___ __ __
 | |) | '_/ _` \ V  V /
 |___/|_| \__,_|\_/\_/ 
                       
*/
public void draw() {
  if (scene == 1) {
    startScreen();
  }


  if (scene == 2) {
    background(0);


    for (int i = 0; i < stars.length; i ++) {
      stars[i].show();


      if (movingStars == true) {
        stars[i].move();
      }
    }




    for (int i = 0; i < bullets.size(); i ++) {
      bullets.get(i).show();
      bullets.get(i).move();
    }


    superShip.show();
    superShip.move();




    if (isAccelerating == true) {
        superShip.accelerate(.1);
    }


    if (isRotateRight == true) {
      superShip.rotate(5);
    }


    if (isRotateLeft == true) {
      superShip.rotate(-5);
    }


    if (isBackwards == true) {
      superShip.accelerate(-0.1);
    }


    if (isShooting == true && energy > 0) {
      bullets.add(new Bullets(superShip));
    }


    if (isHyperspace == true && coolDown >= coolDownTime) {
      superShip.hyperSpace();
      isCoolingDown = true;


      for (int i = 0; i < asteroids.size(); i ++) {
        asteroids.get(i).setX((int)(Math.random() * width));
        asteroids.get(i).setY((int)(Math.random() * height));
        asteroids.get(i).setXSpeed((double) (Math.random() * 5) - 2);
        asteroids.get(i).setYSpeed((double) (Math.random() * 5) - 2);
      }


      for (int i = 0; i < stars.length; i ++) {
        stars[i].setX((int)(Math.random() * width));
        stars[i].setY((int)(Math.random() * height));
      }
    }


    if (isCoolingDown == true && coolDown >= 0) {
      coolDown -= 1;
    }


    if (coolDown < 0) {
      isCoolingDown = false;
      coolDown = coolDownTime;
    }


    if (asteroids.size() <= 30 ) {
      asteroids.add(new Asteroids());
    }


    if (frameCount % 10 == 0) {
      points ++;
    }




    for (int i = 0; i < asteroids.size(); i ++) {
      asteroids.get(i).show();
      asteroids.get(i).move();
    }


    for (int i = 0; i < asteroids.size(); i ++) {
      if (dist(superShip.getX(), superShip.getY(), asteroids.get(i).getX(), asteroids.get(i).getY()) < (asteroids.get(i).getSize() * 10)) {
        asteroids.remove(i);
        lives -= 1;
      }
    }


    if (bullets.size() > 0) {


      for (int j = 0; j < bullets.size(); j ++) {
        for (int i = 0; i < asteroids.size(); i ++) {
          if (dist(bullets.get(j).getX(), bullets.get(j).getY(), asteroids.get(i).getX(), asteroids.get(i).getY()) < (asteroids.get(i).getSize() * 10)) {
            asteroids.remove(i);
            bullets.remove(j);
          }
        }
      }
    }


    
 
    if (lives <= 0) {
      scene = 3;
    }


    textAlign(LEFT);
    textSize(20);
    fill(255);
    text("Lives: " + lives, 10, 30);


    text("Points: " + points, 10, height - 30);


    for (int i = 0; i < bullets.size(); i ++) {
      if (bullets.get(i).getX() >= width || bullets.get(i).getX() <= 0 || bullets.get(i).getY() >= height || bullets.get(i).getY() <= 0) {
        bullets.remove(i);
      }
    }




  }


  if (scene == 3) {
    endScreen();
    lives = 3;
  }


  if (scene == 4) {
    pauseScreen();
  }
}