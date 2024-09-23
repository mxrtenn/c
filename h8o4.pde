void setup(){

size(500,500);
background(255);

int x = 10;
int y = 10;

for(int i = 0; i < 10; i++){
for(int j = 0; j < 10; j++){
  rect(x,y,40,40);
  y = y+40;
}
  y = 10; 
  x = x=10;
}




}
