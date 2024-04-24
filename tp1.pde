PImage Arma;
color Hoja = color(67,67,67); 
color Verde = color(46,255,163);
color Madera = color(175,148,115);
color Blanco = color(252,239,222);
void setup(){
size(800,400);
background(147,144,144);
Arma = loadImage("data/knife.jpg"); //Arma Blanca
image(Arma,0,0,400,400);
noStroke();
beginShape(); fill(Hoja); //pomo
vertex(602,25); vertex(579,38); 
vertex(614,40); vertex(625,43); 
vertex(628,30);   
endShape();
beginShape(); fill(Blanco);
vertex(579,39); vertex(569,46);
vertex(568,52); vertex(609,49);  
vertex(622,54); vertex(623,44);
vertex(614,41);
endShape();
beginShape(); fill(Verde); //mango
vertex(568,53); vertex(609,50);
vertex(622,55); vertex(607,112);   
vertex(596,110); vertex(562,112);
endShape();
beginShape(); fill(Blanco);
vertex(562,113); vertex(596,111);
vertex(607,113); vertex(604,125);
vertex(593,124); vertex(560,129);
endShape();
beginShape(); fill(Madera);
vertex(560,130); vertex(593,125);
vertex(604,126); vertex(601,136);
vertex(592,135); vertex(558,140);
endShape();
beginShape(); fill(Hoja); //guarda
vertex(557,141); vertex(592,136);
vertex(601,137); vertex(606,142);
vertex(612,145); vertex(620,144);    
vertex(633,143); vertex(635,149);
vertex(536,164); vertex(535,155);
vertex(555,151);  
endShape();
beginShape(); //hoja
vertex(561,160); vertex(553,224);
vertex(551,261); vertex(555,309);
vertex(562,339); vertex(571,363);
vertex(583,357); vertex(598,340);  
vertex(607,314); vertex(609,288);
vertex(608,236); vertex(610,217);
vertex(627,182); vertex(614,180);
vertex(605,173); vertex(602,164);
vertex(607,153); 
endShape();
}
void draw(){
  //println(mouseX,mouseY);
}
