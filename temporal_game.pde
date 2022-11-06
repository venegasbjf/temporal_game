int vidas = 3;
int pa = 0; /*variable que controla en que pantalla se esta
 actualmente, ya sea menu, opciones o juego.*/
int back = 1;

float x = 110.0;
float y = 0.0;
float vel = 5.0;

int cont = 0;

PImage fondo1;
PImage fondo2;
PImage character1;
PImage menu;

//los atributos normalmente son (x, y, weidth, height)

void setup() {
  //frameRate(30);
  size(600, 800);
  background(100, 0, 50); //cuando hay muchos atrivutos esto se convierte en una especie de pantalla de carga
  menu = loadImage("Menu.jpg");
  fondo1 = loadImage("fondo1.png");
  fondo2 = loadImage("fondo2.png");
  character1 = loadImage("car1.png");
}

void draw() {

  //int s = second();

  switch(pa) {
  case 0:

    image(menu, -200, 0, 1000, height);

    if (mouseButton==LEFT && mouseX>=95 && mouseX<=274 && mouseY>=380 && mouseY<=463) {
      pa = 2; //boton de inicio
    } else {
      if (mouseButton==LEFT && mouseX>=327 && mouseX<=497 && mouseY>=386 && mouseY<=465) {
        pa = 1; //boton de opciones
      }
    }

    break;

  case 1: //aqui se programan las opciones
    background(100);
    break;
  case 2: //aqui se programa el juego

    image(fondo1, 0, 0, width, height);
    //y = y + vel;

    if (keyPressed==true && key=='a') {
      x = x - 5;
    }

    if (keyPressed==true && key=='d') {
      x = x + 5;
    }

    if (y > height+40/2) {
      y = 0.0;
      back = back*-1;
      vel = vel+0.5;
    }

    if (x < 0) {
      x = 1;
    }

    if (x+40 >300) {
      x = 298-40;
    }

    if (back == 1) { //primer fondo
      image(fondo1, 0, 0, width, height);
      //vel = vel+0.03;
      if (90 > x && x > 28 && 128 > y && y > 102){
       y = 0.0;
       x = 110;
       vel = 2.5;
       }
    } else {
      if (back==-1) { //segundo fondo
      //vel = vel+0.03;
        image(fondo2, 0, 0, width, height);
      }
    }

    image(character1, x, y, 40, 60);
    y = y + vel;


    break;
  }

  /*cont = cont + 1;
   print(cont);*/
   
  //delay(500);
}

/*void segundos(int contsec){
 
 }*/

void keyPressed() {
}

void mousePressed() {
  if (mouseButton==LEFT) {
    println(mouseX);
    println(mouseY);
  }
  /*if (mouseButton==LEFT && mouseX>=95 && mouseX<=274 && mouseY>=380 && mouseY<=463) {
   pa = 2; //boton de inicio
   } else {
   if (mouseButton==LEFT && mouseX>=327 && mouseX<=497 && mouseY>=386 && mouseY<=465) {
   pa = 1; //boton de opciones
   } else {
   pa = 0;
   }
   }*/
}
