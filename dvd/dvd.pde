int x = 50;
int y = 50;
int speed = 2;
int speedtwee = 3;
PImage img;

void setup(){
  size(850,850);
  img = loadImage("dvd.png");  
}

void draw(){
  background(0,0,190);
  fill(0);
  image(img,x,y,150,125);
  x += speed; 
  y += speedtwee;
  if(x > 750){speed -= 1;
}
  if(x < 0){speed += 1;
}
  if(y > 750){speedtwee -= 2;
}
  if(y < 0){speedtwee += 2;
}



}
