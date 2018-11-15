import processing.video.*;

Movie mov;
Pantalla una;

void setup(){
  size(854,480);
  mov= new Movie(this,"vincentV.mp4");
  una= new Pantalla();
  mov.loop();
}
void draw(){
  image(mov,0,0);
  una.display();
}
void movieEvent(Movie m){
  m.read();
}
