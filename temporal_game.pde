int vidas = 3;
int pa = 0; /*variable que controla en que pantalla se esta
 actualmente, ya sea menu, opciones o juego.*/

PImage fondo;
PImage character1;
PImage menu;

void setup() {
  size(1000, 800);
  background(100, 0, 0);
  menu = loadImage("Menu.jpg");
}

void draw() {
  switch(pa) {
  case 0:
    image(menu, 0, 0, width, height);
    break;
  default:
    background(10);
    break;
  }
}

void mousePressed() {
  if (mouseButton==LEFT) {
    pa = 1;
  } else {
    pa = 0;
  }
}
