float _angle = 30;

void setup()
{
  size(800,600);
}

void draw()
{
  clearScene();
  _angle = setAngle(_angle,0.5);
  drawCircle(_angle);
  
}


  void clearScene()
{
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,800,600);
  
  colorMode(HSB,360,100,100);
  
  _angle = setAngle(_angle, .5);                                                                                       
  drawCircle(_angle); 
}


float setAngle(float angle, float step)

{
   angle = angle + step;
  println(angle);
  if(angle > 360)
   {
  angle = 0;
  }
  println(angle);
  return(angle);
}

//Circle Set
void drawCircle(float _angle)
{
  float hue = random(_angle, _angle+60);
  float sat = random (100,100);
  float bright = random (100,100);
  color circle_color = color(hue,sat,bright);
  fill(circle_color);
  
  //fill(color(random(255),random(255),random(255)));
  circle(random(800),random(600), 180);
  circle(random(800),random(600), 80);
  circle(random(800),random(600), 20);
  circle(random(800),random(600), 120);
  circle(random(800),random(600), 70);
}
