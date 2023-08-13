//Gimenez Nazarena 91579/3
//Comision 2

//..................................................................

int cantidad ;
int ubicacion;
float tamaño, d; 
float tono;
color relleno;

//..................................................................

void setup() {
  size(600, 600);
  
    cantidad = 60;
    ubicacion = width/cantidad; 
    relleno = color(200, 10, 150);
    rectMode(CENTER);
  }
  
//..................................................................  
  
void draw() {
  background(relleno);
  dibujarGrilla();
}

//..................................................................

void mousePressed() {
  if (mousePressed == true) {
    tamaño = cantidad/2;
    d = mouseX;
    ubicacion = 20;
  }
}

void mouseDragged() {
  if (mousePressed == true) {
    tamaño = mouseY;
    d = mouseX;
    ubicacion = 50;
  }
}

//..................................................................

void keyPressed () {
  if (keyCode == ' ') {
    ubicacion = width/cantidad;
  }
}
