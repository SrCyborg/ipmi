PImage Pant1; PImage Pant2; PImage Pant3;
PImage Pant4; PImage Pant5; PImage Pant6;
PImage Final; PImage Boton;
int Seg = 0; int Mov;
int FPS; int imagen;
String text1; String text2; String text3;
String text4; String text5; String text6;
String text7; String text8; String text9;
PFont Fuente;
void setup(){
size(640,480);
Fuente = createFont("data/Maximum Impact.ttf",48);
textFont(Fuente);
textSize(28);
fill(255);
imageMode(CENTER);
Boton = loadImage("data/crash.jpg");
text1 = ("Death Note: Light Yagami encuentra una libreta\nque mata personas anotando su nombre en ella.");
text2 = ("La libreta le pertenece a un shinigami llamado Ryuk\nque la tiró al mundo humano porque andaba\naburrido.");
text3 = ("Ryuk le explica como funciona la libreta y termina\nquedandose con él porque lo encuentra interesante");
text4 = ("Light empieza asesinar criminales con la libreta\nsin parar todos los dias despues de clases.");
text5 = ("Aparece L: el mejor detective a investigar el origen\nde estos asesinatos.");
text6 = ("L le tiende una trampa con la que confirma por\ndonde vive Light");
text7 = ("Cagaste, Light");
text8 =("esta no es la libreta");
text9 = ("mi trabajo\nha terminado");
}


void draw(){
  FPS += 60/frameRate;
  if(frameCount % 60 == 0){Seg++;}
   //pantalla 1
 if(Seg < 10){
  if(imagen > 4){imagen = 0;}  
  Pant1 = loadImage("data/flipflip/flipflip("+imagen+").jpg");
  image(Pant1, 640/2, 480/2, 640,480);
  text(text1,20,425);
  if(Seg > 5){text(text8,350, 350);}
  if(FPS >= 60/15){imagen++; FPS = 0;}
  
  //pantalla 2
} else if(Seg > 9 && Seg < 15){  
  if(imagen > 75){imagen = 0;} 
  Pant2 = loadImage("data/ryuk/ryuk("+imagen+").jpg");
  image(Pant2,640/2, 480/2,640,480);
  text(text2,20,Mov+480);
  if(FPS >= 60/24){imagen++; FPS = 0; Mov--;}
  
   //pantalla 3
} else if(Seg > 14 && Seg < 25){
 if(Seg == 15){Mov = 0;}
 if(imagen > 21){imagen = 0;}
 Pant4 = loadImage("data/ryuk2/ryuk2("+imagen+").jpg");
 image(Pant4,640/2, 480/2,640,480);
 text(text3,Mov+640,430);
 Mov-=3;
 if(FPS >= 60/22){imagen++; FPS = 0;}
 
  //pantalla 4
} else if(Seg > 24 && Seg < 30){
  if(Seg == 25){Mov = 0;}
 if(imagen > 146){imagen = 0;}  
 Pant3 = loadImage("data/escribir/escribir("+imagen+").jpg");
 image(Pant3,640/2, 480/2,640,480);
 text(text4,Mov+(-300),Mov+(-100));
 Mov+=3;
 if(FPS >= 60/20){imagen++; FPS = 0;}
 
  //pantalla 5
} else if(Seg > 29 && Seg < 35){
  if(Seg == 30){Mov = 0;}
 if(imagen > 26){imagen = 0;}
 Pant5 = loadImage("data/L/L("+imagen+").jpg");
 image(Pant5,640/2, 480/2,640,480);
 fill(255,255);
 text(text5,20,320);
 fill(255,Mov+0);
 text(text6,20,380);
 Mov++;
 if(FPS >= 60/14){imagen++; FPS = 0;}
 
 //pantalla 6
} else if(Seg > 34 && Seg < 40){
  if(Seg == 35){Mov = 0; imagen = 0;}  
 Pant6 = loadImage("data/cagaste/cagaste("+imagen+").jpg");
 image(Pant6,640/2, 480/2,640,480);
 textSize(Mov+28);
 if(Seg >= 37){
 if(Mov != 28){Mov++;}
 textSize(Mov+28);
 text(text7,150,350);}
 if(FPS >= 60/14 && imagen != 10){imagen++; FPS = 0;}
 
 //pantalla Final
} else if(Seg >= 40){
 if(imagen > 48){imagen = 0;}
 Final = loadImage("data/frame/frame ("+imagen+").gif");
 image(Final,640/2, 480/2,640,480);
 textSize(28);
 text(text9,50,400);
 if(Seg < 45){
 if(FPS >= 60/24){imagen++; FPS = 0;}}
 else image(Boton,640/2,480/2);
}

}
//boton reinicio
void mouseClicked(){
  if(Seg > 45){
  if((mouseX < 355 && mouseX > 280 ) && (mouseY < 285 && mouseY > 265)){
  Seg = 0;
  imagen = 0;
  FPS = 0;
  Mov = 0;
}}
}
