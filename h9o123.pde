void setup(){
//gemiddelde();
//gemiddeldetwee(16,30,2);
print(gemiddeldedrie(32,60,2));
}

void gemiddelde(){
println((16+30)/2);

}

void gemiddeldetwee(int getal, int getaltwee, int getaldrie){
println((getal+getaltwee)/getaldrie);

}

int gemiddeldedrie(int getal, int getaltwee, int getaldrie){
int totaal = (getal+getaltwee)/getaldrie;
return totaal;

}
