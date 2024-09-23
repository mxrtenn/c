void setup(){

int blabla = 0;
while(blabla <= 10){
  println("blabla counter : " + blabla);
  blabla++;

}

for(int blablatwee = 0;blablatwee <11;blablatwee++){
println("blablatwee counter : " + blablatwee);
}


size(500,500);
background(255);


for(int i = 0; i < 11; i++){
  line(i*20+20,i * 20 + 20,i*20+20,10);
}


}
