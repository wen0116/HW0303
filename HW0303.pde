int x =400;
int y=200;
int sx =10;
int sy =15;
float speed=10;

int score =0;
boolean alive = true;
int life = 5 ;

void setup(){
size(800,400);
float theta = random(-60,60)*PI/180;
sx = (int)(speed*cos(theta));
sy = (int)(speed*sin(theta));
}

void keyPressed(){
   x =400;
   y =200;
   float theta = random(-60,60)*PI/180;
   sx = (int)(speed*cos(theta));
   sy = (int)(speed*sin(theta));
   alive = true;
}

void draw(){
background(255);  
fill(20,150,70);
circle(x,y,30);
fill(0,0,225);
rect(800-40,mouseY-50,20,100);
rect(40,y-30,20,100);
x=x+sx;
y=y+sy;
if (x<60){
  sx= -sx;
  }
if(x>780){
  sx=0;
  sy=0;
   if(alive){
    life = life-1;
    }  
    alive = false;
  }
if(x>760&&y>(mouseY-50)&&y<(mouseY+50)){
  sx=-sx;
  if(alive){
    score = score+50;
    }
  }
if(y>400||y<0){
  sy=-sy;
  }
textSize(15);
text("Score:"+score+"Life"+life,400,25);
if(life<=0){
  textSize(60);
  fill(255,0,0);
  text("Game over",300,200);
  }
}
