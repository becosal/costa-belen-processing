PFont font;
int fondo;
String a;
float angulo;
int locH;
int locX;
int trans;



void setup(){
size(400, 400);
fondo = 255;
a = "Hola";
font = loadFont("Dialog.plain-48.vlw");
textFont(font, 60);
locH = 250;
locX = 0;
trans = 255;

}

void draw(){
  background(fondo);

  noStroke();
  fill(255, 255, 0);
  rect(20, 20, 80, 80);
  rect(300, 20, 80, 80);
  rect(20, 300, 80, 80);
  rect(300, 300, 80, 80);

    
 if(mouseX>20 && mouseX<100 && mouseY>20 && mouseY<100){
   fondo = 0;
   
 } else if (mouseX>300 && mouseX<380 && mouseY>300 && mouseY<380){
    
   pushMatrix();
   
   translate(200, 200);
   rotate(angulo);  
   noStroke();
   fill(0, 255, 0);
   rect(-100, -100, 200, 200);  
   
   popMatrix();
    
    angulo += 0.04;
    
  
    
  
  
 } else if (mouseX>300 && mouseX<380 && mouseY>20 && mouseY<100){
   
   noStroke();
   fill(255, 0, 0, trans);
   ellipse(200,200,locH,locH);
   
   trans -= 5;
   locH -= 5;
   if (locH < 0){
   locH = 250;
   trans =255;
   }
   
 } else if(mouseX>20 && mouseX<100 && mouseY>300 && mouseY<380){
   
    fondo = 255;
    fill(0);
    text(a, locX, 200);
    locX +=4;
    if  (locX > 390){
    locX = 0;
  }
   
 }else{
   fondo = 255;
 } 
  
   
   
   
}
