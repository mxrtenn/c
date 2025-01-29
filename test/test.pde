int y = 7;
int lives = 5;
int speed = 3;
int gevangen = 0;
int x = 0;
PFont f;
PImage achtergrond;
PImage pokeball;
PImage backpack;
int aantalBallen = 1;
int maxBal = 5;
float[] xballetjes = new float[maxBal];
int[] yBallen = new int[maxBal];

void setup() {

  size(750, 750);
  frameRate(120);
  achtergrond = loadImage("file.png");
  pokeball = loadImage("pokeball.png");
  backpack = loadImage("backpack.png");
  f = createFont("burbankbigcondensed_black.otf", 28);
  for (int i = 0; i < aantalBallen; i++) {
    xballetjes[i] = random(0, 720);
    yBallen[i] = 0;
  }
}

void draw() {

  background(achtergrond);
  fill(0);
  //balletjes
  for (int i = 0; i < aantalBallen; i++) {
    yBallen[i] += speed;
    
    if (yBallen[i] > 750) {
      yBallen[i] = 0;
      xballetjes[i] = random(0, 720);
      lives -= 1;
    }
   image(pokeball, xballetjes[i], yBallen[i], 50, 50);
   
  //vang ding
  int x = constrain(mouseX, 0, 680);
  image(backpack, x, 670, 70, 70);

  //collision
  if (yBallen[i] >= 670 && yBallen[i] <= 680) {
    if (xballetjes[i] >= mouseX-10 && xballetjes[i] <= mouseX+80) {
      y = 0;
      xballetjes[i] = random(0, 720);
      gevangen += 1;
      }
    }
  }
 
  //progressie
  if (gevangen > 4) {
    y += 2;
  }
  if (gevangen > 9) {
    y += 2;
  }
  if (gevangen > 19) {
    y += 2;
  }
  if (gevangen > 0) {
    y -= 3;
    if(aantalBallen  < maxBal){
    aantalBallen += 1; 
  } }

  
  //tekst
  fill(255,0,0);
  text("Score : "+ gevangen, 570, 50);
  fill(0, 255, 0);
  if (lives < 6) {
    fill(0, 255, 0);
  }
  if (lives < 4) {
    fill(255, 165, 0);
  }
  if (lives < 2) {
    fill(255, 0, 0);
  }
  textFont(f, 24);
  text("Lives : "+ lives, 50, 50);

  //eindscherm
  if (lives < 1) {
    background(0);
    fill(255, 0, 0);
    text("Game Over", 330, 350);
    text("Press ENTER to exit", 285, 400);
    text("Score : " + gevangen, 325, 450);
  }
}
//eindscherm verlaten
void keyPressed() {
  if (lives < 1) {
    if (key == ENTER) {
      exit();
    }
  }
}
