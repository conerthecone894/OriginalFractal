boolean xm = true;
float r = 0;

void setup(){
  size(512, 512);
  rectMode(CENTER);
  stroke(0.5);
  
}

void draw(){
  fill(34, 32, 60, 100);
  rect(256, 256, 512, 512);

  translate(256, 256);
  rotate(r);
  fractal(0, 0, 24);
  r += 0.008;
  rotate(-r);
  rotate(-r*2);
  fractal(0, 0, 12);
  
}

public void fractal(float x, float y, float s){  
  rotate(PI/4);
  
  rotate(-PI/4);
  fill(#87717d);
  rect(x, y, s+15.6, s+15.6);
  rotate(PI/4);
  
  fill(#f0bbc2);
  rect(x+8, y+8, s, s);
  rect(x-8, y+8, s, s);
  rect(x+8, y-8, s, s);
  rect(x-8, y-8, s, s);
  
  fill(255);
  circle(x, y, s);
  
  rotate(-PI/4);
  
  if(s > 4){
    fractal(x+64, y, s/2);
    fractal(x-64, y, s/2);
    fractal(x, y+64, s/2);
    fractal(x, y-64, s/2);
  }
}

//Used a funny color pallete called "Digital Fractal" by Cabenizu.
//https://lospec.com/palette-list/digital-fractal
//I had to use it. How could I not with a name like that?
