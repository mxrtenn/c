void setup(){
size(500,500);
background(255);
vierkant();
print(tekst());
}

void vierkant(){

line(10,10,10,80);
line(10,10,80,10);
line(80,80,80,10);
line(80,80,10,80);
}

String tekst(){

String een = "hoi ik ben marten,";
String twee = " ik ben 18 jaar,";
String drie = " ik studeer software development,";
String vier = " ik hou van gamen.";
String tekstcompleet = een+twee+drie+vier;
return tekstcompleet;
}
