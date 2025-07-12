void lineas(int posX, int posY) {
  strokeWeight(8);
  for (int i=393; i>0; i-=40) { 
      stroke(0);
      rect(posX, posY, i, i);
      stroke(Rojo);
      rect(posX+i/4, posY, i/2, i);
    }
  for (int i=13; i<190; i+=20) {
      noStroke();
      fill(255);
      rect(posX, i, 10, 10);
  }
  for (int i=13; i<390; i+=20) {
      noStroke();
      fill(255);
      rect(posX, i+213, 10, 10);
  }
    square(600, 200, 24);
}

color Colores(int min, int max){
  return color(random(min, max), 60, 90);
}

void mousePressed() {
  cambiarColor = true;
}

void keyPressed() {
  if (key == 'e' | key == 'E') {
    Rojo = color(255, 0, 100);
  }
}
