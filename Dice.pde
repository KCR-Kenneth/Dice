void setup() {
  size (1500,1000,P3D);
}

float ballRotate = 0;
int spinTime = 0;
die theDevil;
int [] rolls = new int [9];

void draw() {
  lights();
  background(150,0,0);
  translate(750,500);
  int mX,mY;
  if(mouseY <= 400) {
    mY = 400;
  } else if (mouseY >= 600) {
    mY = 600;
  } else {
    mY = mouseY;
  }
  if(mouseX <= 650) {
    mX = 650;
  } else if (mouseX >= 850) {
    mX = 850;
  } else {
    mX = mouseX;
  }
  rotateX(-(mY-500)*PI*1/3200);
  rotateY((mX-750)*PI*1/1000);
  
  //SLOT WHEELS
  pushMatrix();
    rotateZ(PI/2);
    rotateY(PI/12);
    stroke(0,0,0);
    fill(255);
    translate(50,-75,-50);
    //Spinny and Randomy
    if (spinTime > 0) {
      rotateY(-spinTime*PI/10);
      spinTime--;
    } else if (spinTime == 0) {
      reroll();
      displayDice();
      spinTime--;
    } else {
      displayDice();
    }
    fill(255);
    // Cylinder function is not my code; check definition for source
    cylinder(300,300,150,12);
    translate(0,200,0);
    cylinder(300,300,150,12);
    translate(0,-400,0);
    cylinder(300,300,150,12);
  popMatrix();

  //PULL BAR AND BALL

//COUNTER
  pushMatrix();
    translate(0,0,140);\
    fill(0);
    rect(-200,-275,400,75);
    textAlign(CENTER);
    textSize(40);
    fill(0,255,0);
    translate(0,0,1);
    int sum = 0;
    for (int i = 0; i < 9; i++) {
      sum = sum + rolls[i];
    }
    text("COUNT: " + sum,0,-225);
  popMatrix();
  staticDecor();
}

class die {
  float x,y,z;
  die (float tempX, float tempY, float tempZ) {
    x = tempX;
    y = tempY;
    z = tempZ;
  }
  
  void show(int index) {
    fill(0);
    int roll = rolls[index];
    pushMatrix();
      translate(x,y,z);
      if (roll == 1) {
        sphere(10);
      } else if (roll == 2) {
        pushMatrix();
          translate(-37.5,-37.5,0);
          sphere(10);
          translate(75,75,0);
          sphere(10);
        popMatrix();
      } else if (roll == 3) {
        sphere(10);
        pushMatrix();
          translate(-37.5,-37.5,0);
          sphere(10);
          translate(75,75,0);
          sphere(10);
        popMatrix();
      } else if (roll == 4) {
        pushMatrix();
          translate(-37.5,-37.5,0);
          sphere(10);
          translate(75,0,0);
          sphere(10);
          translate(0,75,0);
          sphere(10);
          translate(-75,0,0);
          sphere(10);
        popMatrix();
      } else if (roll == 5) {
        sphere(10);
        pushMatrix();
          translate(-37.5,-37.5,0);
          sphere(10);
          translate(75,0,0);
          sphere(10);
          translate(0,75,0);
          sphere(10);
          translate(-75,0,0);
          sphere(10);
        popMatrix();
      } else {
        pushMatrix();
          translate(0,-37.5,0);
          sphere(10);
          translate(0,75,0);
          sphere(10);
        popMatrix();
        pushMatrix();
          translate(-37.5,-37.5,0);
          sphere(10);
          translate(75,0,0);
          sphere(10);
          translate(0,75,0);
          sphere(10);
          translate(-75,0,0);
          sphere(10);
        popMatrix();
        
      }
    popMatrix();
  }
}

void displayDice() {
  pushMatrix();
    translate(0,37.5,0);
    rotateY(-PI/12);
    rotateY(-PI/6);
    translate(0,237.5,0);
    for (int i = 0; i < 3; i++) {
      
      for (int j = 0; j < 3; j++) {
        theDevil = new die (0,-j*(200),300);
        theDevil.show(i*3+j);
      }
      rotateY(PI/6);
    }
  popMatrix();
}

void reroll() {
    for (int i = 0; i < 9; i++) {
      int roll = (int)(Math.random()*6) + 1;
      rolls[i] = roll;
    }
}

void spin(){
  spinTime = 100;
  ballRotate = 0;
}

void mouseDragged() {
  if ((1096 < mouseX) && (mouseX < 1366) && (187 < mouseY) && (mouseY < 630)) {
    ballRotate = -(mouseY-187)*PI/4/443;
  }
  if (mouseY >= 660) {
    spin();
  }
}

void staticDecor() {
  //MACHINE BACK
  pushMatrix();
    translate(0,0,-50);
    fill(0);
    rect(-300,-350, 600, 900);
  popMatrix();
  //YELLOW FRAME
  pushMatrix();
    translate(0,0,125);
    fill(255,225,0);
    rect(-325,-300,200,600);
    rect(125,-300,200,600);
    rect(-125,-300,250,110);
    rect(-125,255,250,50);
    translate(0,0,-100);
    rect(-325,-400,650,100);
    translate(0,0,1);
    textAlign(CENTER);
    textSize(125);
    fill(255,0,0);
    text("$ JACKPOT $",0,-300);
  popMatrix();
  //BOTTOM FRAME
  pushMatrix();
    rotateX(PI/2);
    translate(0,0,-300);
    fill(255,225,0);
    rect(-325,0,650,300);
    rotateX(-PI/2);
    translate(0,0,250);
    rect(-325,0,650,200);
  popMatrix();
}

// Source: apex_nd on processing.org forums
// Author: Abbas Noureddine
// https://forum.processing.org/one/topic/draw-a-cone-cylinder-in-p3d.html
void cylinder(float top, float bottom, float h, int sides)
{
  pushMatrix();
  
  translate(0,h/2,0);
  
  float angle;
  float[] x = new float[sides+1];
  float[] z = new float[sides+1];
  
  float[] x2 = new float[sides+1];
  float[] z2 = new float[sides+1];
 
  //get the x and z position on a circle for all the sides
  for(int i=0; i < x.length; i++){
    angle = TWO_PI / (sides) * i;
    x[i] = sin(angle) * bottom;
    z[i] = cos(angle) * bottom;
  }
  
  for(int i=0; i < x.length; i++){
    angle = TWO_PI / (sides) * i;
    x2[i] = sin(angle) * top;
    z2[i] = cos(angle) * top;
  }
 
  //draw the bottom of the cylinder
  beginShape(TRIANGLE_FAN);
 
  vertex(0,   -h/2,    0);
 
  for(int i=0; i < x.length; i++){
    vertex(x[i], -h/2, z[i]);
  }
 
  endShape();
 
  //draw the center of the cylinder
  beginShape(QUAD_STRIP); 
 
  for(int i=0; i < x.length; i++){
    vertex(x[i], -h/2, z[i]);
    vertex(x2[i], h/2, z2[i]);
  }
 
  endShape();
 
  //draw the top of the cylinder
  beginShape(TRIANGLE_FAN); 
 
  vertex(0,   h/2,    0);
 
  for(int i=0; i < x.length; i++){
    vertex(x2[i], h/2, z2[i]);
  }
 
  endShape();
  
  popMatrix();
}
