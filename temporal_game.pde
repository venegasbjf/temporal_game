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
  case 1:
    background(100);
    break;
  case 2:
    background(10);
    break;
  }
}

void mousePressed() {
  if (mouseButton==LEFT) {
    println(mouseX);
    println(mouseY);
  }
  if (mouseButton==LEFT && mouseX>=295 && mouseX<=474 && mouseY>=380 && mouseY<=463) {
    pa = 2;
  } else {
    if (mouseButton==LEFT && mouseX>=527 && mouseX<=697 && mouseY>=386 && mouseY<=465) {
      pa = 1;
    } else {
      pa = 0;
    }
  }
}
