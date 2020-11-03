PFont font;
int fondo;
String a;


void setup(){
size(400, 400);
fondo = 255;
a = "Buenos días";
font = loadFont("Dialog.plain-48.vlw");
textFont(font, 60);
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
    fondo = 255;
    fill(0);
    text(a, 35, 200);   
 } else if (mouseX>300 && mouseX<380 && mouseY>20 && mouseY<100){
   noStroke();
   fill(255, 0, 0);
   ellipse(200,200,200,200);
 } else if(mouseX>20 && mouseX<100 && mouseY>300 && mouseY<380){
   noStroke();
   fill(0, 255, 0);
   rect(100,100, 200, 200);
 }else{
   fondo = 255;
 } 
   
}
