/*
  ___ _            _   
 / __| |_ __ _ _ _| |_ 
 \__ \  _/ _` | '_|  _|
 |___/\__\__,_|_|  \__|
                       
*/
public void startScreen () {
  background(0);


  fill(255);


  textAlign(CENTER);


  textSize(50);
  text("Asteroids Game", width / 2, height / 2);
  textSize(25);
  text("Press the space \nbar to begin", width / 2, height / 2 + height * 0.3);


  textSize(35);
  text("High Score: " + highScore, width/2, height/2 - height*0.3);
  
}






/*
  ___         _ 
 | __|_ _  __| |
 | _|| ' \/ _` |
 |___|_||_\__,_|
                
*/
public void endScreen () {


  background(0);


  fill(255);


  textAlign(CENTER);


  textSize(50);
  text("GAME OVER", width / 2, height / 2);
  textSize(25);
  text("Press the space \nbar to restart", width / 2, height / 2 + height * 0.2);


  if (points > highScore) {
    highScore = points;
    newHighScore = true;
  }  


  if (newHighScore == true) {
    textSize(35);
    text("NEW HIGHSCORE", width / 2, height / 2 - height * 0.4);
  }


  text("Points: " + points, width/2, height/2 - height * 0.25);
}






/*
  ___                   
 | _ \__ _ _  _ ___ ___ 
 |  _/ _` | || (_-</ -_)
 |_| \__,_|\_,_/__/\___|
                        
*/
public void pauseScreen () {
  textAlign(CENTER);
  fill(255);
  textSize(50);
  text("Paused", width / 2, 200);
  textSize(20);
  text("Press space to continue", width/2, height - (height * 0.25));
}