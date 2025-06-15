void lineas() {
  strokeWeight(8);
  for (int i=393; i>0; i-=40) { 
      stroke(0);
      rect(x, y, i, i);
      stroke(Rojo);
      rect(x+i/4, y, i/2, i);
    }
  for (int i=13; i<190; i+=20) {
      noStroke();
      fill(255);
      rect(x, i, 10, 10);
  }
  for (int i=13; i<390; i+=20) {
      noStroke();
      fill(255);
      rect(x, i+213, 10, 10);
  }
    square(600, 200, 24);
}
color Rojo() {
  return Rojo;
}

void mousePressed() {
  Rojo = color(random(0, 255), random(0, 255), random(0, 255));
}

void keyPressed() {
  if (key == 'e' | key == 'E') {
    Rojo = color(255, 0, 100);
  }
}
