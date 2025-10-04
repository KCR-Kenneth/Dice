void setup() {
  size(1500,1000, P3D);
  frameRate(60);
}

//Distance between duelists
int distance = 1300;

// Parameters for bolts
int miniChange = 50;
int range = 100;
int xIncrement = 50;
int limit = distance/2 + 2000;

// Note: I have no clue how to make it so variable names can be composed of variable strings...
// so copy and pasting it is!
  int xs1 = -470;
  int ys1 = 100;
  int zs1 = 0;
  int xf1;
  int yf1;
  int zf1;
  
  int xs2 = -470;
  int ys2 = 100;
  int zs2 = 0;
  int xf2;
  int yf2;
  int zf2;
  
  int xs3 = -470;
  int ys3 = 100;
  int zs3 = 0;
  int xf3;
  int yf3;
  int zf3;
  
  int xs4 = -470;
  int ys4 = 100;
  int zs4 = 0;
  int xf4;
  int yf4;
  int zf4;
  
  int xs5 = -470;
  int ys5 = 100;
  int zs5 = 0;
  int xf5;
  int yf5;
  int zf5;
  
  int xs6 = -470;
  int ys6 = 100;
  int zs6 = 0;
  int xf6;
  int yf6;
  int zf6;
  
  int xs7 = -470;
  int ys7 = 100;
  int zs7 = 0;
  int xf7;
  int yf7;
  int zf7;
  
  boolean left = true;
  boolean go;
  

void draw() {
  background(85,95,148);
  
  // 3D Manuever
  translate(750,500);
  int y;
  if (mouseY > 300) {
    y = mouseY;
  } else {
    y = 300;
  }
  rotateX(-(y-500)*PI*1/1500);
  rotateY((mouseX-750)*PI*1/500);
  noStroke();
  
  //Lightning!
    stroke(41,171,226);
    strokeWeight(15);
    if (left) {
      go = xs1 < limit;
    } else {
      go = xs1 > -limit;
    }
    
    if (go) {
      if (left) {
        xf1 = xs1 + xIncrement;
        xf2 = xs2 + xIncrement;
        xf3 = xs3 + xIncrement;
        xf4 = xs1 + xIncrement;
        xf5 = xs2 + xIncrement;
        xf6 = xs3 + xIncrement;
        xf7 = xs3 + xIncrement;
      } else {
        xf1 = xs1 - xIncrement;
        xf2 = xs2 - xIncrement;
        xf3 = xs3 - xIncrement;
        xf4 = xs1 - xIncrement;
        xf5 = xs2 - xIncrement;
        xf6 = xs3 - xIncrement;
        xf7 = xs1 - xIncrement;
      }
      
      yf1 = ys1 + (int)(Math.random()*range - miniChange);
      zf1 = zs1 + (int)(Math.random()*range - miniChange);
      line (xs1,ys1,zs1,xf1,yf1,zf1);
      xs1 = xf1;
      ys1 = yf1;
      zs1 = zf1;
      
      yf2 = ys2 + (int)(Math.random()*range - miniChange);
      zf2 = zs2 + (int)(Math.random()*range - miniChange);
      line (xs2,ys2,zs2,xf2,yf2,zf2);
      xs2 = xf2;
      ys2 = yf2;
      zs2 = zf2;
      
      yf3 = ys3 + (int)(Math.random()*range - miniChange);
      zf3 = zs3 + (int)(Math.random()*range - miniChange);
      line (xs3,ys3,zs3,xf3,yf3,zf3);
      xs3 = xf3;
      ys3 = yf3;
      zs3 = zf3;
      
      yf4 = ys4 + (int)(Math.random()*range - miniChange);
      zf4 = zs4 + (int)(Math.random()*range - miniChange);
      line (xs4,ys4,zs4,xf4,yf4,zf4);
      xs4 = xf4;
      ys4 = yf4;
      zs4 = zf4;
      
      yf5 = ys5 + (int)(Math.random()*range - miniChange);
      zf5 = zs5 + (int)(Math.random()*range - miniChange);
      line (xs5,ys5,zs5,xf5,yf5,zf5);
      xs5 = xf5;
      ys5 = yf5;
      zs5 = zf5;
      
      yf6 = ys6 + (int)(Math.random()*range - miniChange);
      zf6 = zs6 + (int)(Math.random()*range - miniChange);
      line (xs6,ys6,zs6,xf6,yf6,zf6);
      xs6 = xf6;
      ys6 = yf6;
      zs6 = zf6;
      
      yf7 = ys7 + (int)(Math.random()*range - miniChange);
      zf7 = zs7 + (int)(Math.random()*range - miniChange);
      line (xs7,ys7,zs7,xf7,yf7,zf7);
      xs7 = xf7;
      ys7 = yf7;
      zs7 = zf7;
    }
  
  decorate();
}

void mousePressed() {
  
    left =!left;
    if (left) {
      xs1 = -distance/2 + 230;
      xs2 = -distance/2 + 230;
      xs3 = -distance/2 + 230;
      xs4 = -distance/2 + 230;
      xs5 = -distance/2 + 230;
      xs6 = -distance/2 + 230;
      xs7 = -distance/2 + 230;
    } else {
      xs1 = distance/2 - 230;
      xs2 = distance/2 - 230;
      xs3 = distance/2 - 230;
      xs4 = distance/2 - 230;
      xs5 = distance/2 - 230;
      xs6 = distance/2 - 230;
      xs7 = distance/2 - 230;
    }
    ys1 = 100;
    zs1 = 0;
    ys2 = 100;
    zs2 = 0;
    ys3 = 100;
    zs3 = 0;
    ys4 = 100;
    zs4 = 0;
    ys5 = 100;
    zs5 = 0;
    ys6 = 100;
    zs6 = 0;
    ys7 = 100;
    zs7 = 0;
}

void decorate() {
  lights();
  ambientLight(125,45,45);
  directionalLight(255,255,255,0,0,1);
  
  // Creating wizards
  stroke(255,255,255);
  noStroke();
  strokeWeight(2);
  fill(255,220,50);
  translate(-distance/2,0);
  sphere(100);
  fill(50,50,50);
  stroke(10,10,10);
  // Following function is not mine; check function declaration for source  
  cylinder(100,20,400,10);
  pushMatrix();
    noStroke();
    translate (0, 150, -30);
    rotateX(-PI/6);
    for (int z = 0; z < 30; z++) {
      rect(-10,0,20,150);
      translate(0,0,-1);
    }
  popMatrix();
  pushMatrix();
    translate (0, 150, 30);
    rotateX(PI/6);
    for (int z = 0; z < 30; z++) {
      rect(-10,0,150,50);
      translate(0,0,1);
    }
    fill(100, 60, 10);
    translate(100,0,-40);
    rotate(-PI/6);
    for (int z = 0; z < 15; z++) {
      rect(-10,0,150,30);
      translate(0,0,1);
    }
  popMatrix();
  
  
  translate(distance,0);
  fill(255,220,50);
  sphere(100);
  fill(50,50,50);
  stroke(10,10,10);
  cylinder(100,20,400,10);
  pushMatrix();
    noStroke();
    translate (0, 150, 30);
    rotateX(PI/6);
    for (int z = 0; z < 30; z++) {
      rect(-10,0,20,150);
      translate(0,0,1);
    }
  popMatrix();
  pushMatrix();
    translate (0, 150, -30);
    rotateX(-PI/6);
    for (int z = 0; z < 30; z++) {
      rect(-160,0,150,50);
      translate(0,0,-1);
    }
    fill(100, 60, 10);
    translate(-100,0,30);
    rotate(PI/6);
    for (int z = 0; z < 15; z++) {
      rect(-160,0,150,30);
      translate(0,0,1);
    }
  popMatrix();
  
  
  // Making the background
  translate (-distance/2,0,0);
  
  pushMatrix();
    fill(255, 89, 89);
    translate(3000,-1600,-4000);
    sphere(200);
  popMatrix();
  
  pushMatrix(); 
    rotateX(PI/2);
    translate(0,0,-402);
    fill(80, 40, 10);
    rect(-2500,-300,5000,600);
    translate(0,0,-200);
    fill (150,150,150);
    rect(-3000,-2500,6000,5000);
  popMatrix();
  
  pushMatrix();
    fill(80, 40, 10);
    translate(0,0,-200);
    rect(-2500,402,5000,200);
    translate(0,0,400);
    rect(-2500,402,5000,200);
  popMatrix();
  
  pushMatrix();
    translate(0,0,-2500);
    fill(75,75,75);
    rect(-3000,-100,6000,700);
    for(int i = 0; i < 6; i++) {
      rect(-3000 + i*1080, -2000,600,1900);
    }
    translate(0,0,5000);
    rect (-3000,-100,6000,700);
    for(int i = 0; i < 6; i++) {
      rect(-3000 + i*1080, -2000,600,1900);
    }
  popMatrix();
  pushMatrix();
    rotateY(PI/2);
    translate(0,0,-3000);
    rect(-2500,-7000,5000,11000);
    
    translate(0,0,6000);
    rect(-2500,-7000,5000,11000);
  popMatrix();
  
  pushMatrix();
    rotateX(0.588);
    translate(0,0,3205);
    rect(-3000,-4807.5, 6000,4807.5);
  popMatrix();
  pushMatrix();
    rotateY(PI);
    rotateX(0.588);
    translate(0,0,3205);
    rect(-3000,-4807.5, 6000,4807.5);
  popMatrix();
}

// Source: apex_nd on processing.org forums
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
