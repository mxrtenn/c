void setup(){
  int variabelblabla = 1234; 
  if(variabelblabla == 1234){
  println("hoedje van papier");
  }

  int temperatuur = -2;
  if(temperatuur < 0){println("ik mag schaatsen");
  }
  
  String sneeuw = "Wit";
  if(sneeuw != "Geel");{println("ik mag de sneeuw eten");
  }
  
  int jantje = 6;
  if(jantje > 4){println("jantje mag van tafel");
  }
  
  String datum = "10-09";
  String verjaardag = "15-09";
  if(verjaardag == datum){println("je krijgt cadeautjes");
  }
  else{println("je krijgt geen cadeautjes");
  }
  
  double lengte = 1.60;
  if(lengte <= 1.60){println("je mag gratis naar het toilet");
  }
  
  int mondgehouden = 15;
  if(mondgehouden >= 10){println("ik ben gelukkig");
  }


  int cijfer = 5;
  if(cijfer>=6){println("je hebt een voldoende");
  }
  else{println("je hebt een onvoldoende");
  }
  
  
  int leeftijd = 17;
  if(leeftijd <2){println("baby");}
  else if(leeftijd <4){println("kleuter");}
  else if(leeftijd <12){println("tiener");}
  else if(leeftijd <20){println("adolescent");}
  else{println("volwassene");}
  
  boolean onvoldoendevoornederlands=true;
  boolean onvoldoendevoorengels=false;
  boolean onvoldoendevooreconomie=true;
  boolean onvoldoendevoorgeschiedenis=false;
  
  if(onvoldoendevooreconomie == true && onvoldoendevoornederlands == true || onvoldoendevoorengels == false && onvoldoendevoorgeschiedenis == false){println("je gaat niet over");}
  else{println("je gaat over");}
  
  boolean quest1=true;
  boolean quest2=true;
  boolean quest3=false;
  boolean questsklaar=false;
  
  if(quest1 == true && quest2 == true && quest3 == true){questsklaar = true;}
  if(questsklaar == true){println("Gefeliciteerd je quests zijn klaar");}
  else{println("Je quests zijn nog niet klaar");}

}
