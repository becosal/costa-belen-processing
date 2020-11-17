float coX, coY; // Coordenadas del círculo
float posXTex, posYTex; // Coordenadas del numero
float tam; // Tamaño texto
color colCuad; // Color del cuadrado
int cont; // Contador de "mousePressed"
int incre;
float diam; // Diámetro del círculo;
int distancia; // distancia entre el cuadrado y el círculo.
PFont fuente;


void setup(){
size(400,400);
smooth();
coX=40;
coY=60;
posXTex= width/2;
posYTex= 160;
colCuad= color(0);
fuente = loadFont("ArialMT-48.vlw");
textFont(fuente);
cont=0;
diam= 40;
distancia = 200;
tam = 50;
incre = 5;



}

void draw(){
background(255);
noStroke();




fill(colCuad);
rect(170 ,280 , 60,60);


 if (mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340){
    fill(0, 200, 0);
    rect(170 ,280 , 60,60);
    
  }

if (mousePressed && mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340){
    fill(0, 0, 220);
    rect(170 ,280 , 60,60);
    fill(255);
    ellipse(200 ,310 , 50,50);
  }
  
 





fill(200,0,0);
ellipse(coX,coY,diam,diam);

if( mousePressed && mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340){
coX += incre;
  if (coX >= 400) {
    coX = 0;
    coY += 150;
  }
  if (coY >= 400) {
    coY = 40;
  }
}

// textSize(- - - - -); Aquí hay que poner el tamaño del texto

fill(0);
text(cont, posXTex,posYTex);
textFont(fuente, tam);
 
stroke(255, 0, 0);
line(coX, coY, 200 ,310); 


}

void mousePressed(){
  
  cont ++;
  
  if(mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340){
    tam = random(40, 100);
  }
  if(mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340){
  
}
 

 }
 

  
void mouseReleased(){
  if(mouseX > 170 && mouseX < 230 && mouseY > 280 && mouseY < 340){
     posXTex = random(40, 300);
     posYTex = random(40, 260);
}



}
