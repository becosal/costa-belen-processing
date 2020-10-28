PImage foto;

void setup() {
  size(400, 400);
  
  foto = loadImage("canales.jpg");
}

void draw() {
  background(255);
  
  image(foto, 50, 50);
  
  noStroke();                /* circulo amarillo */
  fill(245, 231, 85, 220);
  ellipse(200,200, 100, 100);
  
  noFill();            /* circulos rojos */
  strokeWeight(2);
  stroke(190, 0, 0);
  ellipse (350, 200, 100, 100);
  ellipse (50, 200, 100, 100);
 
  
  fill(255);            /* ellipses blancas */
  strokeWeight(1.5);
  stroke(0);
  ellipse (300, 200, 100, 50);
  ellipse (100, 200, 100, 50);
  
 
  
  noFill();              /*circulos negros */   
  strokeWeight(1.5);
  stroke(0);
  ellipse (350, 200, 50, 50);
  ellipse (50, 200, 50, 50);
  
    stroke(190, 0, 0);                  /* triangulos rojos */
   beginShape();  
    vertex(200, 250);
    vertex(100, 398);
    vertex(310, 398);
   endShape(CLOSE);
 
   beginShape(); 
    vertex(200, 148);
    vertex(100, 3);
    vertex(300, 3);
   endShape(CLOSE);
 
                    /* forma poligonal */
  stroke(255);
  strokeWeight(9);
  beginShape();
    vertex(178, 173);
    vertex(220,180);
    vertex(197,215);
    vertex(210,230);
  endShape();
 
 
}
void mousePressed(){
  println(mouseX+ "," + mouseY); /*Saber las coordenadas*/
}
