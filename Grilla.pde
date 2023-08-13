
void dibujarGrilla(){
 for (int i=0; i<cantidad; i++) {
    for (int j=0; j<cantidad; j++) {
      d = dist(mouseX, mouseY, i*ubicacion+ubicacion/2, j*ubicacion+ubicacion/2);
      tamaño = map(d, 50, dist(0, 0, width, height), 20, ubicacion*2); 
      tono = map(d, 10, width, 225, 150); 

      if ((i+j) % 2 == 0 ) {
        fill(214, 11, 48, tono);
      } else {
        fill(55, 70, 142, tono);
      }
      
      noStroke();
      rect(i*ubicacion+ubicacion/2, j*ubicacion+ubicacion/2, tamaño, tamaño);
      ellipse(i*ubicacion+ubicacion/2, j*ubicacion+ubicacion/2, tamaño-10, tamaño-10); 
    }
  }
}
