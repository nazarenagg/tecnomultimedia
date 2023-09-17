//VIDEO EXPLICATIVO ======

//Variables de:

//Pocision del jugador
  let murciX , murciY; 
  
//Pocision del objectivo
  let faX, faY; 
  let frX, frY;

//Imagenes simples
  let fuegobueno, fuegomalo;
  let fondomenu, fondojuego;

//Imagenes con texto
  let ganaste, perdiste, creditos, instrucciones;

//Imagenes del jugador
  let murci1;

  let estado = "menu";

  let frame = "1"


function setup() {
  createCanvas( 600, 600 );

  murciX =width/2
  murciY =450
  
  faX = 300
  faY = 0
  
  frX =
  frY =
  
  //Imagenes
  fuegobueno=loadImage('assets/fuegobueno.png');
  fuegomalo=loadImage('assets/fuegomalo.png');
    
  fondomenu=loadImage('assets/fondodelmenu.png');
  fondojuego=loadImage('assets/fondodeljuego.png');
    
  ganaste=loadImage('assets/ganaste.png');
  perdiste=loadImage('assets/perdiste.png');
    
  creditos=loadImage('assets/creditos.png');
  instrucciones=loadImage('assets/instrucciones.png');
  
  murci1=loadImage('assets/murcielago1.png');

  
}


function draw() {
  
  if ( estado == "menu" ) {
      image(fondomenu, 0, 0);  
    
//TITULO
push()
  fill (255, 20, 20)
  textSize (50)
  textAlign (CENTER)
  text( "CAZADOR\nDE ALMAS",  width/2 ,100 );
pop()
    
push()

//BOTON Inicio
  stroke(200)
  fill( 210, 10, 10, 70 );
  circle( 150, 300, 100 );
  textSize( 30 )
  textAlign(CENTER)
  text( "Iniciar", 150, 380)
  
//BOTON Credito
  fill( 70, 0, 150, 70 );
  circle( 450, 300, 100 );
  textSize( 30 )
  textAlign(CENTER)
  text( "Creditos", 450, 380)
    

//BOTON Instruccioes
  fill( 10, 200, 170, 70 );
  circle( 300, 450, 100 );
  textSize( 30 )
  textAlign(CENTER)
  text( "Instrucciones", 300, 530)
    
pop()
    
  }

//===================================================================================================================//  
    
//PARA EL CAMBIO DE PANTALLA-----
  if ( mouseIsPressed ) {
    
//(el 50 es el radio del circulo)
    
//BOTON PARA IR AL JUEGO
  if ( dist(150, 300, mouseX, mouseY) < 50 ) { 
        estado = "inicio";}
    
//BOTON PARA IR A LOS CREDITOS
  if ( dist(450, 300, mouseX, mouseY) < 50 ) {  
        estado = "credito";}
      
//BOTON PARA IR A LOS INSTRUCCIONES
  if ( dist(300, 450, mouseX, mouseY) < 50 ) { 
        estado = "instrucciones";}
    
    }

//===================================================================================================================//  

  //Pantalla del juego
  if ( estado == "inicio" ) {
    image(fondojuego, 0, 0)
    image(murci1, murciX, murciY, 100,100)
  

    image(fuegobueno, faX , faY, 50, 50)
     faY++;
    if ( faY > height ) {
      faY = 0;}

}

//===================================================================================================================//  

  //Pantalla de creditos
  if ( estado == "credito" ) {
      image(creditos, 0, 0);
      
  if (mouseIsPressed)      
//Condicion Para regresar al Inicio
  if ( dist(550, 50, mouseX, mouseY) < 25 ) { 
        estado = "menu";}
        
//Boton para regresar al inicio
push()
  stroke(200)
  fill( 255, 20, 20, 70 );
  circle( 550, 50, 50 );
  textAlign( CENTER )
  textSize(15)
  text("Regresar", 550,90)
pop()
}
  
//===================================================================================================================//  
  
  //Pantalla de las instrucciones
  if ( estado == "instrucciones" ) {
      image(instrucciones, 0, 0);
  
  if (mouseIsPressed)      
  
//Condicion Para regresar al Inicio
  if ( dist(550, 550, mouseX, mouseY) < 25 ) { 
        estado = "menu";}
        
//Boton para regresar al inicio
push()
  stroke(200)
  fill( 255, 20, 20, 70 );
  circle( 550, 550, 50 );
  textAlign( CENTER )
  textSize(15)
  text("Regresar", 550,590)
pop()
  }
  

//===================================================================================================================//  

  
}//llave del draw pa no olvidar xd

function keyPressed() {

   if ( keyCode == LEFT_ARROW && murciX > 10) {  //si se presiona la flecha de arriba
    murciX -= 20;}
    
  if ( keyCode == RIGHT_ARROW && murciX < 500 ) {  //si se presiona la flecha de arriba
    murciX += 20;}





}
