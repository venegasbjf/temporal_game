int vidas = 3;
int pa = 0; /*variable que controla en que pantalla se esta
 actualmente, ya sea menu, opciones o juego.*/
int back = 1;
float x = 110.0;
float y = 0.0;
float vel = 6.0;

PImage fondo1;
PImage fondo2;
PImage character1;
PImage menu;

//los atributos normalmente son (x, y, weidth, height)

void setup() {
  size(600, 800);
  background(100, 0, 50); //cuando hay muchos atrivutos esto se convierte en una especie de pantalla de carga
  menu = loadImage("Menu.jpg");
  fondo1 = loadImage("fondo1.png");
  fondo2 = loadImage("fondo2.png");
  character1 = loadImage("person1.png");
}

void draw() {
  switch(pa) {
  case 0:
    image(menu, -200, 0, 1000, height);
    break;
  case 1: //aqui se programan las opciones
    background(100);
    break;
  case 2: //aqui se programa el juego
    if (back == 1) {
      image(fondo1, 0, 0, width, height);
    } else {
      if (back==2) {
        image(fondo2, 0, 0, width, height);
      }
    }
    
    image(character1, x, y, 55, 70);
    y = y + vel;
    
    if(keyPressed==true && key=='a'){
    x = x - 5;
    }
    
    if(keyPressed==true && key=='d'){
    x = x + 5;
    }
    
    if(y > height+55/2){
    y = 0.0;
    }
    
    if(x < 0){
    x = 1;
    }
    
    if (x+55 >300){
    x = 299-55;
    }
    break;
  }
}

void keyPressed(){

}

void mousePressed() {
  if (mouseButton==LEFT) {
    println(mouseX);
    println(mouseY);
  }
  if (mouseButton==LEFT && mouseX>=95 && mouseX<=274 && mouseY>=380 && mouseY<=463) {
    pa = 2; //boton de inicio
  } else {
    if (mouseButton==LEFT && mouseX>=327 && mouseX<=497 && mouseY>=386 && mouseY<=465) {
      pa = 1; //boton de opciones
    } else {
      pa = 0;
    }
  }
}
