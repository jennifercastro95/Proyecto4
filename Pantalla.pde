class Pantalla{
  int contador;
  int tam;
  color c;
  int rep;
  
Pantalla(){
  tam=10;
  
}

void display(){
  contador++;
  background(0);
  //cada efecto tiene una duracion de 10 segundos
   println (contador);  
    if (contador%100 == 0){
     rep++;
     rep = rep%4;
   }
   
  switch(rep){
    case 0:  mov.loadPixels();
  for(int i=0; i<mov.width; i+=tam){
    for(int j=0; j<mov.width; j+=tam){
     color c=mov.get(i,j);
     stroke(c);
     strokeWeight(random(6));
     line(i,j,i+random(-6,6),j+random(-6,6));
    }
  }
    break;
    case 1:
    mov.loadPixels();
  for(int i=0; i<mov.width; i+=tam){
    for(int j=0; j<mov.width; j+=tam){
     color c=mov.get(i,j);
     fill(c);
     text("v",i,j);
    }
  }  
    break;
    case 2:
    mov.loadPixels();
  for(int i=0; i<mov.width; i+=tam){
    for(int j=0; j<mov.width; j+=tam){
     color c=mov.get(i,j);
     fill(c);
     rect(i,j,tam,tam);
    }
  }
  break;
  case 3:
  for(int i=0; i<mov.width; i+=tam){
    for(int j=0; j<mov.width; j+=tam){
     color c=mov.get(i,j);
     stroke(c);
     ellipse(i,j,random(2,10),random(2,10));
    }
  }
  break;
  }
} 
  
 
}


   
