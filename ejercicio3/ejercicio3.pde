float posH, tam;

void setup(){
size(400,400);
smooth();


}

void draw(){
background(255);

fill(255);
stroke(1);
rect(20,330,50,50);

if(mouseX > 20 && mouseX < 70 &&  mouseY > 330 && mouseY < 380) {
  posH = map(mouseX, 20, 70, 0, 400);
  tam = map(mouseY, 330, 280, 0, 400);  
}

  fill(0);
  rect(0, 200, posH, 30);  
  

  
 pushMatrix();

  translate(posH, 215);
  rect(-15, -tam/2, 30, tam); /* la mitad en negativo -  */
  
  popMatrix();
  


} 
