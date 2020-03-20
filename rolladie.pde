PShape d4;
PShape d4_anteprima;

PShape d6;
PShape d6_anteprima;

PShape d8;
PShape d8_anteprima;

PShape d10;
PShape d10_anteprima;

PShape d12;
PShape d12_anteprima;

PShape d20;
PShape d20_anteprima;

void setup(){
  size(400, 400, P3D);
  
  //d4 obj import
  d4_anteprima = loadShape("d4.obj");
  d4_anteprima.scale(8);

  d4 = loadShape("d4.obj");
  d4.scale(100);
  
  //d6 obj import
  d6_anteprima = loadShape("d6.obj");
  d6_anteprima.scale(8);
  
  d6 = loadShape("d6.obj");
  d6.scale(100);
  
  //d8 obj import
  d8 = loadShape("d8.obj");
  d8.scale(100);

  d8_anteprima = loadShape("d8.obj");
  d8_anteprima.scale(8);
  
  //d10
  d10 = loadShape("d10.obj");
  d10.scale(100);
  
  d10_anteprima = loadShape("d10.obj");
  d10_anteprima.scale(8);
  
  //d12 obj import
  d12 = loadShape("d12.obj");
  d12.scale(100);
  
  d12_anteprima = loadShape("d12.obj");
  d12_anteprima.scale(10);
  
  //d20 obj import
  d20 = loadShape("d20.obj");

  d20_anteprima = loadShape("d20.obj");
  d20_anteprima.scale(0.1);
}

int roll = 0; //numero generato a caso
float angolo = 0.0; //radianti di rotazione del dado

boolean inizio = false; //disegnare o no il dado all'inizio

//scelta di quale oggetto visualizzare
boolean show_d4 = false;
boolean show_d6 = false;
boolean show_d8 = false;
boolean show_d10 = false;
boolean show_d12 = false;
boolean show_d20 = false;

void draw(){
  background(255);
  //d4
  pushMatrix();
    lights();
    fill(255);
    translate(10, 12);
    
    rotateX(frameCount * 0.04);
    rotateY(frameCount * 0.04);
    rotateZ(frameCount * 0.04);
    
    shape(d4_anteprima, 0, 0);
  popMatrix();
  
  //D6
  pushMatrix();
    lights();
    fill(255);
    translate(40, 10);
    
    rotateX(frameCount * 0.04);
    rotateY(frameCount * 0.04);
    rotateZ(frameCount * 0.04);
    
    shape(d6_anteprima, 0, 0);
  popMatrix();
  
  //D8
  pushMatrix();
    lights();
    fill(255);
    translate(70, 10);
    
    rotateX(frameCount * 0.04);
    rotateY(frameCount * 0.04);
    rotateZ(frameCount * 0.04);
    
    shape(d8_anteprima, 0, 0);
  popMatrix();
  
  //D10
  pushMatrix();
    lights();
    fill(255);
    translate(100, 10);
    
    rotateX(frameCount * 0.04);
    rotateY(frameCount * 0.04);
    rotateZ(frameCount * 0.04);
    
    shape(d10_anteprima, 0, 0);
  popMatrix();
  
  //D12
  pushMatrix();
    lights();
    fill(255);
    translate(130, 10);
    
    rotateX(frameCount * 0.04);
    rotateY(frameCount * 0.04);
    rotateZ(frameCount * 0.04);
    
    shape(d12_anteprima, 0, 0);
  popMatrix();
  
  //D20  
  pushMatrix();
    lights();
    translate(160, 11);
    
    rotateX(frameCount * 0.04);
    rotateY(frameCount * 0.04);
    rotateZ(frameCount * 0.04);
      
    shape(d20_anteprima, 0, 0);
  popMatrix();
  
  //dado scelto dall'utente
  pushMatrix();
    translate(width/2, height/2);
    lights();
      
    if(inizio){
      if(show_d6)
        d6();
      if(show_d20)
        d20();
      if(show_d4)
        d4();
      if(show_d12)
        d12();
      if(show_d8)
        d8();
      if(show_d10)
        d10();
    
  }
  //se devo testare del codice va qui
  
  popMatrix();
}  

void d4(){
  lights();
  rotateX(0);
  rotateY(-1);
  rotateZ(-3.1);
  
  if(angolo <= 6.3){
    roll = int(random(1, 4+1));
    rotateX(angolo);
    rotateY(angolo);
    rotateZ(angolo);
        
    angolo += 1 * 0.06;
  }
  
  shape(d4, 0, 0);
  
  rotateY(-1);
  rotateZ(3.1);
  fill(0);
  textSize(42);
  text(str(roll), -25, 40, 50);
}

void d6(){
  fill(135,206,235);
  
  if(angolo <= 3.1){
    roll = int(random(1, 6+1));
    rotateX(angolo);
    rotateY(angolo);
    rotateZ(angolo);
        
    angolo += 1 * 0.04;
  }
  
  shape(d6, 0, 0);
  
  fill(0);
  textSize(32);
  text(str(roll), -10, 10, 70);
        
  fill(135,206,235);
}

void d8(){
  rotateX(-0.5);
  rotateY(0);
  rotateZ(0);
  
  if(angolo <= 1.55 * 2){
    roll = int(random(1, 8+1));
        
    rotateX(angolo);
    rotateY(angolo);
    rotateZ(angolo);
        
    angolo += 1 * 0.06;
  }
  
  shape(d8, 0, 0); 
  
  rotateX(0.5);
  fill(0);
  textSize(32);
  text(str(roll), -10, 10, 69);
  
}

void d10(){
  rotateX(-0.3);
  rotateY(0.62);
  rotateZ(0);
    
  if(angolo <= 1.55 * 2){
    roll = int(random(0, 10));
          
    rotateX(angolo);
    rotateY(angolo);
    rotateZ(angolo);
          
    angolo += 1 * 0.06;
  }
  shape(d10, 0, 0);
    
  rotateX(0.4);
  rotateY(-0.62);
  rotateZ(0.2);
  fill(0);
  textSize(32);
  text(str(roll), -5, 10, 78);
}

void d12(){
  rotateX(0.5);
  rotateY(2.5);
  rotateZ(0);
  
  if(angolo <= 6.3){
    roll = int(random(1, 12+1));
    rotateX(angolo);
    rotateY(angolo);
    rotateZ(angolo);
        
    angolo += 1 * 0.06;
  }
  
  shape(d12, 0, 0);
 
  rotateX(0.5);
  rotateY(-2.5);
  rotateZ(0.3);
  
  fill(0);
  textSize(32);
  
  int x_pos = 0;
  if(roll >= 10)
    x_pos = -23;
  else
    x_pos = - 15;
  
  text(str(roll), x_pos, 20, 75);
}

void d20(){
  rotateX(0);
  rotateY(-1);
  rotateZ(0);
      
  if(angolo <= 3.1 * 2){
    roll = int(random(1,20+1));
        
    rotateX(angolo);
    rotateY(angolo);
    rotateZ(angolo);
        
    angolo += 1 * 0.06;
  }
      
  shape(d20, 0, 0);
      
  rotateY(1);
  fill(0);
  textSize(32);
      
  int x_pos = 0;
  if(roll >= 10)
    x_pos = -23;
  else
    x_pos = - 15;
        
  text(str(roll), x_pos, 20, 85);
}

void mouseClicked(){
  inizio = true;
  angolo = 0;
  
  if(mouseX > 0 && mouseX < 20 && mouseY > 0 && mouseY < 20){ //visualizza d4
    show_d4 =   true;

    show_d6 =   false;
    show_d8 =   false;
    show_d10 =  false;
    show_d12 =  false;
    show_d20 =  false;
  }
  else if(mouseX > 30 && mouseX < 50 && mouseY > 0 && mouseY < 20){ //visualizza d6
    show_d6 =   true;

    show_d4 =   false;
    show_d8 =   false;
    show_d10 =  false;
    show_d12 =  false;
    show_d20 =  false;
  }
  else if(mouseX > 60 && mouseX < 80 && mouseY > 0 && mouseY < 20){ //visualizza d8
    show_d8 =   true;

    show_d4 =   false;
    show_d6 =   false;
    show_d10 =  false;
    show_d12 =  false;
    show_d20 =  false;
  }
  else if(mouseX > 90 && mouseX < 110 && mouseY > 0 && mouseY < 20){ //visualizza d10
    show_d10 =   true;
    
    show_d4 =   false;
    show_d6 =   false;
    show_d8 =   false;
    show_d12 =  false;
    show_d20 =  false;
  }
  else if(mouseX > 120 && mouseX < 140 && mouseY > 0 && mouseY < 20){ //visualizza d12
    show_d12 =  true;
    
    show_d4 =   false;
    show_d6 =   false;
    show_d8 =   false;
    show_d10 =  false;
    show_d20 =  false;
  }
  else if(mouseX > 150 && mouseX < 170 && mouseY > 0 && mouseY < 20){ //visualizza d20
    show_d20 =  true;
    
    show_d4 =   false;
    show_d6 =   false;
    show_d8 =   false;
    show_d10 =  false;
    show_d12 =  false;
  }
}
