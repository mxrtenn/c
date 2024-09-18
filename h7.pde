void setup(){

  
int leeftijd = 4;

  switch(leeftijd){
  case 1 : 
    println("Net begonnen met het leven");
    break;
  case 2:
  case 3:
    println("Baby");
    break;
  case 4 :
  case 5 :
    println("Kleuter");
    break;
  case 6:
  case 7:
  case 8:
  case 9:
  case 10:
  case 11:
  case 12:
    println("Kind");
    break;
  case 13:
  case 14:
  case 15:
  case 16:
  case 17:
  case 18:
    println("Puber");
    break;
  default:
    println("Volwassene");
    break;  
}

int som = 2+6+(2*(3*3));
println(som);
  
Boolean fiets = false;
Boolean lopen = true;
Boolean auto = false;

if(!lopen && (fiets || auto)){
            println("Je gebruikt een voertuig met wielen");
}   
   
}
