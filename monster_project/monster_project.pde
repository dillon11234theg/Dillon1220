// Monster

float bodyY=300, bodyX=300;
float speedY=1.2;
float speedX=2;

boolean eyeGrowing=true;
float eyeSize=25;

float G=0;
float R=150;
float B=150;

boolean armMovingRight=true;
float armOffset=0;

void setup(){
  size(600,600);
}

void draw(){

  background(100,150,200);

  bodyY+=speedY;
  bodyX+=speedX;

  // bounce Y first
  if(bodyY<180 || bodyY>height-125){
    speedY*=-1;
  }

  if(bodyX<100 || bodyX>width-100){
    speedX*=-1;
  }

  // arm movement
  if(armMovingRight){
    armOffset+=1;
    if(armOffset>15){
      armMovingRight=false;
    }
  }else{
    armOffset-=1;
    if(armOffset<-15){
      armMovingRight=true;
    }
  }

  // eye moving
  if(eyeGrowing){
    eyeSize+=0.2;
    if(eyeSize>30){
      eyeGrowing=false;
    }
  }else{
    eyeSize-=0.2;
    if(eyeSize<20){
      eyeGrowing=true;
    }
  }

  drawMonster();
}



//monster drawing
void drawMonster(){
//head
  fill(R-50,G,B-50);
  ellipse(bodyX,bodyY-120,150,140);
//body
  fill(R,G,B);
  ellipse(bodyX,bodyY,200,250);
//eyes
  fill(255);
  ellipse(bodyX+40,bodyY-140,40,50);
  ellipse(bodyX-40,bodyY-140,40,50);
//Pupils
  fill(0);
  ellipse(bodyX+40,bodyY-140,eyeSize,eyeSize+5);
  ellipse(bodyX-40,bodyY-140,eyeSize,eyeSize+5);
//mouth
  fill(255,0,0);
  arc(bodyX,bodyY-100,80,40,0,PI);
//teeth
  fill(255);
  triangle(bodyX+10,bodyY-100,bodyX+20,bodyY-110,bodyX+15,bodyY-90);
  triangle(bodyX-20,bodyY-100,bodyX-10,bodyY-110,bodyX-15,bodyY-90);
//arms
  fill(120,0,120);
  rect(bodyX+70-armOffset,bodyY-20,30,150);
  rect(bodyX-100+armOffset,bodyY-20,30,150);
//hand
  fill(80,0,80);
  ellipse(bodyX+85-armOffset,bodyY+130,40,30);
  ellipse(bodyX-85+armOffset,bodyY+130,40,30);
//belly
  fill(200,0,200);
  ellipse(bodyX,bodyY+50,120,150);
//spots
  fill(255,200,0);
  ellipse(bodyX+50,bodyY+20,15,15);
  ellipse(bodyX-50,bodyY,20,20);
  ellipse(bodyX,bodyY-20,25,25);
//hoorns
  fill(80,0,80);
  triangle(bodyX+50,bodyY-200,bodyX+20,bodyY-180,bodyX+80,bodyY-180);
  triangle(bodyX-50,bodyY-200,bodyX-20,bodyY-180,bodyX-80,bodyY-180);

}



void mousePressed(){
  B=random(100,300);
  R=random(100,300);
  G=random(0,300);

  bodyX=constrain(mouseX,150,width-150);
  bodyY=constrain(mouseY,200,height-150);
}
