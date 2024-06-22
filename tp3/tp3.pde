// https://youtu.be/O-02wU5d54M
PImage Art;
boolean Pintar;
void setup(){
Art = loadImage("data/jesus-soto.jpg");
background(255);
size(800,600);
noStroke();
image(Art,0,0,400,600);
rectMode(CENTER);
}
void draw(){
Pintar = Comenzar();
background(255);
Art(Pintar);
Art2(Pintar);
image(Art,0,0,400,600);
}
void mousePressed(){
Interaccion(Pintar);}
