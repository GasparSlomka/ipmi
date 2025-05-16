//Gaspar Slomka 122906/3
PImage I1, I2, I3, I4, I5, I6, I7;
PFont fuente;
int imagen;
int segundos;
int x, y, ancho, alto;
int py, px, X, Y;
String texto1, texto2, texto3;
boolean activo;

void setup(){
  size(640,480);
  I1 = loadImage("dexter1.jpg");
  I2 = loadImage("dexter2.jpg");
  I3 = loadImage("dexter3.jpg");
  I4 = loadImage("dexter4.jpg");
  I5 = loadImage("dexter5.jpg");
  fuente = loadFont("ArchivoNarrow-SemiBoldItalic-48.vlw");
  texto1 = "Producida por Clyde Phillips";
  texto2 = "Escrita por James Manos Jr";
  texto3 = "Transmitida en ShowTime";
  X = 1;
  Y = 1;
  py = 0;
  px = 640;
  x = 400;
  y = 300;
  ancho = 200;
  alto = 200;
  imagen = 1;
  textFont(fuente,33);
  textSize(40);
  activo = false;
}

void draw(){
  if (imagen==1) {
  fill(255);
  image(I1, 0, 0, 640, 480);
  fill(255, 0, 0);
  text("Empezar", 412, 360, 500, 400);
  fill(255, 0, 0, 25);
  noStroke();
  
  }
  else if (imagen==2) {
  image(I2, 0, 0, 640, 480);
  fill(255, 0, 0);
  text(texto1, 200, py, 300, 400);
  if (py<1000) {
    py ++;
  }
  } else if (imagen==3) {
    image(I3, 0, 0, 640, 480);
    fill(255, 0, 0);
  text(texto2, px, 300, 440, 400);
  if (px>40) {
    px = px -1;
  }
  } else if (imagen==4) {
    image(I4, 0, 0, 640, 480);
    fill(255, 0, 0);
  text(texto3, px, 300, 440, 400);
  if (px>40) {
    px = px -1;
  }

  } else if (imagen==5) {
    image(I5, 0, 0, 640, 480);
    float tono = map(X, 250, 100, 255, 0);
    fill(255, 0, 0, tono);
    text("Volver", 70, 200, X, Y);
    if (X<250) {
    X = X + 5;
    if (Y<250) {
    Y = Y + 5;
  }
}
    fill(0, 0, 0, 0);
    noStroke();
    rect(x, y, ancho, alto);
  }
  
  if (activo == true) {
    if (frameCount%60 == 0) {
      segundos++;
    }
  }
  if (segundos>0 && segundos <=0) {
    imagen = 1;
  } else if (segundos>0 && segundos<= 9) {
    imagen = 2;
  } else if (segundos >9 && segundos <27) {
    imagen = 3;
  } else if (segundos >27 && segundos <35) {
    imagen = 4;
  } else if (segundos >35) {
    imagen = 5;
  }
  fill(200);
  textSize(40);
  text(segundos, 600, 30);
}
void mousePressed() {
  if(segundos>36){
    if (mouseX<250 && mouseX>=50 && mouseY< 250 && mouseY>=150) {
      activo = true;
    imagen = 1;
    segundos = 0; 
    X = 1;
    Y = 1;
    py = 0;
    px = 640;
    x = 400;
    y = 300;
    ancho = 200;
    alto = 200;
    activo = false;
    }
  }
  if (mouseX>= x && mouseX< x+ancho && mouseY>y && mouseY< y+alto) {
      activo = true;
  }
}
