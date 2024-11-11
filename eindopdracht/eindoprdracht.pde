import controlP5.*;
int y = 7;
float xballetje = random(0,720);
int lives = 5;
  
int gevangen = 0;
int x = 0;
PFont f;
PImage achtergrond;
PImage pokeball;
PImage backpack;

void setup(){
  
size(750,750);
frameRate(120);
achtergrond = loadImage("file.png");
pokeball = loadImage("pokeball.png");
backpack = loadImage("backpack.png");
f = createFont("burbankbigcondensed_black.otf", 28); 
}

void draw(){
  
background(achtergrond);
fill(0);
//balletjes
y += speed;
if(y < 0){speed += 1;}
if(y > 750){lives -= 1;y = 0; xballetje = random(0,720);}
if(lives < 1){xballetje = 0;}
image(pokeball,xballetje,y,50,50);



//vang ding
int x = constrain(mouseX, 0, 680);
image(backpack,x,670,70,70);

//collision
if(y >= 670 && y <= 680){
  if(xballetje >= mouseX-10 && xballetje <= mouseX+80){
    y = 0; xballetje = random(0,720);
 gevangen += 1; 
    
}}

//progressie
if(gevangen > 4){y += 2;}
if(gevangen > 9){y += 2;}
if(gevangen > 19){y += 2;}
if(gevangen > 2){y -= 3;  
  image(pokeball,xballetje,y,50,50);
  if(xballetje >= mouseX-10 && xballetje <= mouseX+80){
      y = 0; xballetje = random(0,750); gevangen += 1;}
}
//tekst
fill(255);
text("Score : "+ gevangen, 570, 50); 
fill(0,255,0);
if(lives < 6){fill(0,255,0);}
if(lives < 4){fill(255,165,0);}
if(lives < 2){fill(255,0,0);}
textFont(f,24);
text("Lives : "+ lives, 50, 50);

//eindscherm
if(lives < 1){background(0); fill(255,0,0); text("Game Over", 330, 350); 
text("Press ENTER to exit", 285, 400);
text("Score : " + gevangen, 325, 450);
} 


}
//eindscherm verlaten
void keyPressed(){
if(lives < 1){
  if(key == ENTER){
exit();}}
}
  
