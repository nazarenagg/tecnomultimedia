//int estados;

String estado;
int c; //contador



//IMAGENES DE FONDO

PImage fondo1 ;
PImage fondo2 ;
PImage fondo3 ;
PImage fondo4 ;
PImage fondo5 ;
PImage fondo6 ;
PImage fondo7 ;
PImage fondo8 ;

//................................................................................................................................................................//

void setup(){
  
   size( 640, 480 );  //tamaño de pantalla
   frameRate( 60 );  //fps
    
  
   fondo1 = loadImage("1-MENU.png");
   fondo2 = loadImage("2-CARACTERISTICAS.png");
   fondo3 = loadImage("3-RESISTENCIA.png");
   fondo4 = loadImage("4-HABITAD.png");
   fondo5 = loadImage("5-COMPORTAMIENTO.png");
   fondo6 = loadImage("6-ALIMENTACION.png");
   fondo7 = loadImage("7-ORIGEN.png");
   fondo8 = loadImage("8-FINAL.png");
 
 
   estado = "MENU";
  
  }

//................................................................................................................................................................//


void draw(){



  //image(fondo1, 0, 0);
  //image(fondo2, 0, 0);
  //image(fondo3, 0, 0);
  //image(fondo4, 0, 0);
  //image(fondo5, 0, 0);
  //image(fondo6, 0, 0);
  //image(fondo7, 0, 0);
  //image(fondo8, 0, 0);
  
  textAlign( CENTER, CENTER ); //texto centrado
  textSize( 50 ); //tamaño de texto
  fill(200); //color del texto



//MENU___________________________________________________________________________________________________________________________________________________________//

    if ( estado.equals("MENU") ) {
    image(fondo1, 0, 0);
         
    textSize( 100 ); 
    fill(200);
    text( "ZORROS ARTICOS\nGarcias Gimenez\nNazarena\nLegajo:91579/3 ", width/2, height/2 );
        
    circle( width/2, height/4*3, 100 ); //BOTON DE la pantalla menu
    }
    
//PANTALLA 1___________________________________________________________________________________________________________________________________________________________//

else if (estado.equals("Pantalla1") ) {
    image(fondo2, 0, 0);
      
    textSize( 50 ); //tamaño de texto
    fill(200);
    text( "El zorro ártico (Vulpes lagopus) o zorro polar es una especie de mamífero\ncarnívoro de la familia de los cánidos,destaca por poseer un bello\ny voluminoso manto completamente blanco. Pero más allá de su aspecto, estos destacan\npor ser una de las pocas especies capaces de cazar y sobrevivir en las gélidas tundras de\nNorteamérica y Eurasia.", 50, 70 );
        
    c++;  //suma 1 per frame
    if( c >= 600 ){  // 60fps * 10seg = 600
    estado = "Pantalla2";
    c = 0;  //RESET DE VARIABLE CONTADOR
    }

//PANTALLA 2___________________________________________________________________________________________________________________________________________________________

    } else if (estado.equals("Pantalla2") ) {
    image(fondo3, 0, 0);
    
    textSize( 50 ); 
    fill(200);
    text( "A pesar de su pequeño tamaño,\nlos zorros polares son animales muy resistentes,\ncapaces de soportar los inviernos de dichas regiones,\nque pueden registrar temperaturas\nde hasta -50 ºC.", 350, 70 );
        
    c++;  //suma 1 per frame
    if( c >= 600 ){  // 60fps * 10seg = 600
    estado = "Pantalla3";
    c = 0;  //RESET DE VARIABLE CONTADOR
    }
        
//PANTALLA 3___________________________________________________________________________________________________________________________________________________________

    } else if (estado.equals("Pantalla3") ) {
    image(fondo4, 0, 0);
    
    textSize( 50 ); 
    fill(200);
    text( "Los zorros árticos se distribuyen a lo largo\nde las tundras del norte de Europa,Asia y Norteamérica,\nincluidas muchas islas a las\nque llegaron en su día caminando sobre el hielo.", 50, 70 );
        
    c++;  //suma 1 per frame
    if( c >= 600 ){  // 60fps * 10seg = 600
    estado = "Pantalla4";
    c = 0;  //RESET DE VARIABLE CONTADOR
    }

//PANTALLA 4___________________________________________________________________________________________________________________________________________________________

    } else if (estado.equals("Pantalla4") ) {
    image(fondo5, 0, 0);
    
    textSize( 50 ); 
    fill(200);
    text( "Permanecen activos todo el año y son de los pocos animales que no hibernan o emigran a\notras regiones durante el invierno. En tierra, sus depredadores más\nfrecuentes son el lobo y el búho nival. También son animales\nnocturnos,suelen salir a cazar durante las noches de la tundra\nártica, en las cuáles pueden moverse con gran facilidad\ngracias a su óptima visión nocturna y poderoso olfato.", 350, 70 );
        
    c++;  //suma 1 per frame
    if( c >= 600 ){  // 60fps * 10seg = 600
    estado = "Pantalla5";
    c = 0;  //RESET DE VARIABLE CONTADOR
    }
        
//PANTALLA 5___________________________________________________________________________________________________________________________________________________________

    } else if (estado.equals("Pantalla5") ) {
    image(fondo6, 0, 0);
    
    textSize( 50 ); 
    fill(200);
    text( "Su principal alimento consiste en pequeños mamíferos y aves, siendo su principal presa el lemming. También consume huevos, y en ocasiones\n da caza a los cachorros de focas. Frecuentemente se alimentan de la carroña dejada por carnívoros más \ngrandes, como los osos polares. Cuando no encuentran carne, consumen bayas y algas.",50, 50 );
        
    c++;  //suma 1 per frame
    if( c >= 600 ){  // 60fps * 10seg = 600
    estado = "Pantalla6";
    c = 0;  //RESET DE VARIABLE CONTADOR
    }
        
//PANTALLA 6___________________________________________________________________________________________________________________________________________________________
    
    } else if (estado.equals("Pantalla6") ) {
    image(fondo7, 0, 0);
    
    textSize( 50 ); 
    fill(200);
    text( "Perteneciente al género Vulpes, que comprende a los llamados -zorros verdaderos-\n originarios del hemisferio Norte (como el zorro rojo y el zorro gris). \nParticularmente, es la única especie de zorro que forma parte de la fauna de la Tundra Ártica,\n expandiéndose ampliamente en las regiones polares de Eurasia y Norteamérica,\n desde Canadá hasta Siberia. Su hábitat comprende también las llamadas islas árticas,\n como Groenlandia, Islandia y las Islas Bering.", 330, 50 );
        
    c++;  //suma 1 per frame
    if( c >= 600 ){  // 60fps * 10seg = 600
    estado = "FINAL";
    c = 0;  //RESET DE VARIABLE CONTADOR
    }
        
//FINAL___________________________________________________________________________________________________________________________________________________________

    } else if (estado.equals("FINAL") ) {
    image(fondo8, 0, 0);
      
    textSize( 100 ); 
    fill(200);
    text( "GRACIAS POR VER", width/2, height/2 );
    
    circle( width/2, height/4*3, 100 ); //BOTON
    } 
        
//SI NO SE EJECUTA NADA DE LO ANTERIOR, PASA ESTO___________________________________________________________________________________________________________________________________________________________
    
    } else {
      
    textSize( 100 ); 
    fill(200);  
    text( "no es ningun \n estado preseteado", width/2, height/2 );
    
    println( estado );
    }

//................................................................................................................................................................//

void mousePressed(); {

    // circle( width/2, height/4*3, 50 );  <-- de acá salen los datos
    if( estado.equals("MENU") ){
    if( dist(width/2, height/4*3, mouseX, mouseY) < 50/2 ){
    estado = "Pantalla1";
        }
      }
      
    if( estado.equals("FINAL") ){
    estado = "MENU" ;

  }
}
