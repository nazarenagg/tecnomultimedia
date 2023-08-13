//Gimenez Nazarena lEGAJO 91579/3
//cOMISION 1
//Libro: El Extraño Caso del Dr Jekyll y Mr Hide


//para los fondos
PImage[] fondos;
int pantalla = 0;

int spacing = 50;
float diameter = 30;
String[] textos = new String[24];



void setup() {
  size (600, 600);
  fill ( 255,0,0 );
  
//CARGA DE IMAGENES DE FONDO................................................................................................................................................................//
  
    fondos = new PImage[18];
    fondos[1] = loadImage("Inicio.png");
    fondos[2] = loadImage("Pantalla2.png");
    fondos[3] = loadImage("presentjekyll.png");
    fondos[4] = loadImage("elexperimento.png");
    fondos[5] = loadImage("Finalneutro.png");
    fondos[6] = loadImage("sobrehide.png");
    fondos[7] = loadImage("descontrol.png");
    fondos[8] = loadImage("elasesinato.png");
    fondos[9] = loadImage("confrontacion.png");
    fondos[10] = loadImage("finalescape.png");
    fondos[11] = loadImage("sinopciones.png");
    fondos[12] = loadImage("muertedual.png");
    fondos[13] = loadImage("finalsecreto.png");
    fondos[14] = loadImage("desesperacion.png");
    fondos[15] = loadImage("suicidio.png");
    fondos[16] = loadImage("finalsuicidio.png");
    fondos[17] = loadImage("creditos.png");

//CARGA DE TEXTOS..........................................................................................................................................................................//


  textos [1] = "El Doctor Jekyll, un duque de expresion tranquila y amable, apacionado de su trabajo y los misterios que este puede traerle";
  textos [2] = "La pacion del doctor lo ha llevado a pensar y estudiar hacerca de la personalidad de las personas y su dualidad como individuo. Encontrar una forma de separar las caracteristicas de un individuo y saber su comportamiento";
  
//Aqui se decide un final..........................................................................................................................................................//
  
  textos [3] = "Decidido a continuar Jekyll decide probar en si mismo su creacion. El resultado fue inmediato.....el ser llamado Hide habia aparecido.";
  textos [4] = "Sin embargo todo fue cuesta abajo en un parpadeo, la personalidad y acciones de Hide eran aberrantes, un ser violentos sin limites ni conciensia de las consecuencias de sus actos.";
  textos [5] = "Hide aun no habia cometido graves crimenes.....hasta esa noche en la que Hide decidiria desatar aun mas su maldad al atacar a un duque que caminaba por las frias calles de Londres.....Hide cinicamente se preguntaba si matar al duque o simplemente dejarlo e irse";
  
//Aqui se decide un final..........................................................................................................................................................//

    //CONFRONTACION
  textos [6] = "Luego del asesinato del duque y en el camino a su laboratorio Jekyll comienza a tener una disputa con Hide por su crimen y como era posible que haya hecho eso. Una disputa por el control reñida.....el doctor ya no sabia como continuar...";
  
  //Te rindes ante hide luego de matar al conde..................................FINAL ESCAPE
  
    //Decides revertir todo luego de matar al conde..................................FINAL SECRETO
  textos [7] = "Luego del asesinato del duque el doctor comenzo a caer en desesperacion, no sabia como lidiar con el ser que habia creado, Hide estaba descontrolado y estaba a un paso de mandarlo a la locura....por lo que decidio acabar con el ser de una vez....revertir lo hecho era la unica solucion.....tenia que serlo....";
  textos [8] ="Lastimosamnete el doctor NO FUE PRECABIDO, LA DESESPERACION LO LLEVO A COMETER ERRORES....ERRORES FATALES.....Jekyll y Hide, el apasionado doctor y el sinico asesino, en una muerte dolorosa ninguno pudo tener el control..........el secreto de sus errores y la verdad detras de la creacion de HIDE quedaron enterrados en las manos de su viejo amigo detective.....";
  
   //SI EL CONDE NO MUERE..................................FINAL SUICIDA
  
  textos [9] ="Luego de casi provocar la muerte del duque, Jekyll esta completamente desesperado ya no sabe que mas hacer......sabe que si no para ahora Hide sera capaz de cosas peores...";
  textos [10] ="Jekyll con una mezcla de emociones, cierra las puertas de su laboratorio, coje un frasco de nombre conocido y sin mas lo bebe, sabe que si lo piensa mucho dudara..... el dolor es insoportable pero luego de unos minutos todo simplemente se desvanecio.....Jekyll....Hide ....ya no exisian mas";

  textos [11] ="Gimenez Nazarena 91579/3--COMISON 2-- LIBRO:El extraño caso del Dr Jekyll y Mr Hide --- AUTOR: Robert Louis Stevenson    ";

  
    }



void draw() {
  background(0);
  
  
  
  if ( pantalla==0 ) {
    image( fondos[1], 0, 0, width, height );
    Botoncircular("Comienzo", 150, 500, 120);
    Botoncircular("Creditos", 450, 500, 120);
    
  } else if ( pantalla == 1 ) {
    image( fondos[2], 0, 0, width, height);
    Botoncircular("Siguiente", 150, 500, 120);
    
  } else if ( pantalla == 2 ) {
    textSize(20);
    image( fondos[3], 0, 0, width, height);
    text( textos[1], 20, 70, 550, 550);
    Botoncircular("Siguiente", 450, 300, 120);
    
  } else if ( pantalla == 3 ) {
    textSize(25);
    image( fondos[4], 0, 0, width, height);
    text( textos[2], 20, 50, 550, 550);
    Botoncircular("Experimentar", 150, 500, 120);
    Botoncircular("No experimentar", 450, 500, 120);
    
//.................................................................
    
  } else if ( pantalla == 4 ) {
    image (fondos[5], 0, 0, width, height);
    Botoncircular("Inicio", 150, 500, 120);
    
//.................................................................
    
  } else if ( pantalla == 5 ) {
    textSize(25);
    image (fondos[6], 0, 0, width, height);
    text( textos[3], 20, 100, 550, 550);
    Botoncircular("Siguiente", 300, 500, 120);
    
  } else if ( pantalla == 6 ) {
    image (fondos[7], 0, 0, width, height);
    textSize(20);
    text( textos[4], 20, 250, 550, 550);
    Botoncircular("Siguiente", 150, 500, 120);
    
  } else if ( pantalla == 7 ) {
    image (fondos[8], 0, 0, width, height);
    textSize(20);
    text( textos[5], 20, 60, 550, 550);
    Botoncircular("Matarlo", 150, 500, 120);
    Botoncircular("Soltarlo", 450, 500, 120);
    
 //...............................................................................................
 
  } else if ( pantalla == 8 ) {
    image( fondos[9], 0, 0, width, height);
    textSize(20);
    text( textos[6], 20, 300, 550, 550);
    Botoncircular("RENDIRTE", 150, 500, 120);
    Botoncircular("REVERTIR", 450, 500, 120);
    
 //...............................................................................................
    
  } else if ( pantalla == 9 ) {
    image( fondos[10], 0, 0, width, height);
    Botoncircular("Inicio", 450, 400, 120);

 //...............................................................................................

  } else if ( pantalla == 10 ) {
    image( fondos[11], 0, 0, width, height);
    textSize(20);
    text( textos[7], 20, 250, 550, 550);
    Botoncircular("Siguiente", 450, 500, 120);
    
  } else if ( pantalla == 11 ) {
    image( fondos[12], 0, 0, width, height);
    textSize(20);
    text( textos[8], 20, 350, 550, 550);
    Botoncircular("Siguiente", 100, 100, 120);
    
  } else if ( pantalla == 12 ) {
    image( fondos[13], 0, 0, width, height);
    Botoncircular("Inicio", 300, 500, 120);

 //...............................................................................................
 
  } else if ( pantalla == 13 ) {
    image( fondos[14], 0, 0, width, height);
    textSize(20);
    text( textos[9], 20, 300, 550, 550);
    Botoncircular("Siguiente", 150, 500, 120);
    
  } else if ( pantalla == 14 ) {
    image( fondos[15], 0, 0, width, height);
    textSize(20);
    text( textos[10], 20, 50, 550, 550);
    Botoncircular("Siguiente", 150, 500, 120);
    
  } else if ( pantalla == 15 ) {
    image( fondos[16], 0, 0, width, height);
    Botoncircular("Inicio", 450, 500, 120);
    
//...............................................................................................    
    
  } else if ( pantalla == 16 ) {
    image( fondos[17], 0, 0, width, height);
    textSize(20);
    text( textos[11], 300, 200, 200, 500);
    Botoncircular("Inicio", 450, 500, 120);
    
}}


void mouseClicked() {
  
  if ( pantalla==0) {
    
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=1;
    }
    if ( superficie ( mouseX, mouseY, 450, 500, 120)) {
      pantalla=16;
    }
//...............................................................................................        
    
  } else if ( pantalla == 1 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=2;
    }
//...............................................................................................        
  } else if ( pantalla == 2 ) {
    if ( superficie ( mouseX, mouseY, 450, 300, 120)) {
      pantalla=3;
    }
//...............................................................................................    
    
  } else if ( pantalla == 3 ) {
    
    if ( superficie ( mouseX, mouseY, 450, 500, 120)) {
      pantalla=4;
      }
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=5;
    }    
//...............................................................................................        
  } else if ( pantalla == 4 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=0;
    }
//...............................................................................................    
  } else if ( pantalla == 5 ) {
    if ( superficie ( mouseX, mouseY, 300, 500, 120)) {
      pantalla=6;
    }
//...............................................................................................    
  } else if ( pantalla == 6 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=7;
    }
//...............................................................................................    
    
  } else if ( pantalla == 7 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=8;
    }
      if ( superficie ( mouseX, mouseY, 450, 500, 120)) {
      pantalla=13;
    }
//...............................................................................................    
  } else if ( pantalla == 8 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=9;
    }
    if ( superficie ( mouseX, mouseY, 450, 500, 120)) {
      pantalla=10;
    }
//...............................................................................................   
    
  } else if ( pantalla == 9 ) {
    if ( superficie ( mouseX, mouseY, 450, 400, 120)) {
      pantalla=0;
    }
//...............................................................................................   
    
  } else if ( pantalla == 10 ) {
    if ( superficie ( mouseX, mouseY, 450, 500, 120)) {
      pantalla=11;
    }
//...............................................................................................   
  } else if ( pantalla == 11 ) {
    if ( superficie ( mouseX, mouseY, 100, 100, 120)) {
      pantalla=12;
    }
//...............................................................................................   
  } else if ( pantalla == 12 ) {
    if ( superficie ( mouseX, mouseY, 300, 500, 120)) {
      pantalla=0;
    }
//...............................................................................................   
  } else if ( pantalla == 13 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=14;
    }
//...............................................................................................   
  } else if ( pantalla == 14 ) {
    if ( superficie ( mouseX, mouseY, 150, 500, 120)) {
      pantalla=15;
    }
//...............................................................................................   
  } else if ( pantalla == 15 ) {
    if ( superficie ( mouseX, mouseY, 450, 500, 120)) {
      pantalla=0;
    } 
//...............................................................................................   
  } else if ( pantalla == 16 ) {
    if ( superficie ( mouseX, mouseY, 450, 500, 120)) {
      pantalla=0;
    } 
  }
}
