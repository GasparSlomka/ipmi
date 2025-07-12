//Gaspar Slomka 122906/3
//https://www.youtube.com/watch?v=78kWBXI85m0&ab_channel=GasparSlomka
PImage P;
int x, y;
int Rojo;
boolean cambiarColor = false;

void setup(){
  size(800,400);
  background(255);
  P = loadImage("01.png");
  image(P, 0, 0, 400, 400);
  rectMode(CENTER);
  x = 600;
  y = 200;
  Rojo = color(255, 0, 100);
}

void draw(){
  lineas(x, y);
  if(cambiarColor) {
    Rojo = Colores(100, 255);
    cambiarColor = false;
  }
}
