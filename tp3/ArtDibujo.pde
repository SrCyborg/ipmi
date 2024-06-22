color amarrillo4 = color(255,158,0);
color amarrillo3 = color(255,166,0);
color amarrillo2 = color(255,171,0);
color amarrillo1 = color(253,176,0);
void Art(boolean Dibujar){
  if(Dibujar){
for(int x = 0; x < 7; x++){
  for(int y = 0; y < 7; y++){
   if(y < 2){fill(amarrillo1);}      // cuadrados 1 y 2
   else if(y == 2){fill(amarrillo2);}// cuadrado 3
   else if(y == 3){fill(amarrillo3);}// cuadrado 4
   else if(y == 4){fill(amarrillo4);}// cuadrado 5
  int LnX = x * 60; // hice esto porque la linea quad se me hacia larga
  int LnY = y * 130;
  int LnY2 = 75 - y;// esto está de más, pero como dije arriba
rect(421+LnX,(44-y)+LnY,30,62);
fill(0);
triangle(406+LnX,(13-y)+LnY,406+LnX,LnY2+LnY,422+LnX,LnY2+LnY);
quad(421+LnX,LnY2+LnY,452+LnX,LnY2+LnY,467+LnX,(142-y)+LnY,438+LnX,(143-y)+LnY);
                          }
                       }                        
}
 
}
 
