// Future Polluted World 

float smokeY = 250;
float smokeX = 120;

float personX = 200;

// rain 
float rainY1 = 0;
float rainY2 = 200;
float rainY3 = 400;
float rainY4 = 350;
float rainY5 = 150;
float rainY6 = 50;
float rainY7 = 250;

void setup(){
  size(600,600);
}

void draw(){

  background(150,130,100);

  drawRain();

  // ground
  fill(100,90,70);
  rect(0,450,600,150);

drawFactory();
drawSmoke();
drawPeople();

}

// factory
void drawFactory(){

  fill(80,70,60);
  rect(80,380,150,80);

  fill(90,80,70);
  rect(120,250,40,130);

  fill(200,150,50);
  rect(100,400,20,20);
}

// smoke
void drawSmoke(){

  smokeY -= 1;

  if(smokeY < 150){
    smokeY = 250;
  }

  fill(100,100,90,150);
  ellipse(smokeX,smokeY,60,40);
  ellipse(smokeX+10,smokeY-30,80,50);
}

// rain
void drawRain(){

  stroke(180);
  strokeWeight(2);

  // drop 1
  line(100,rainY1,100,rainY1+10);
  rainY1 += 5;
  if(rainY1 > height){
    rainY1 = 0;
  }

  // drop 2
  line(300,rainY2,300,rainY2+10);
  rainY2 += 5;
  if(rainY2 > height){
    rainY2 = 0;
  }

  // drop 3
  line(500,rainY3,500,rainY3+10);
  rainY3 += 5;
  if(rainY3 > height){
    rainY3 = 0;
  }

  // drop 4
  line(200,rainY4,200,rainY4+10);
  rainY4 += 5;
  if(rainY4 > height){
    rainY4 = 0;
  }

  // drop 5
  line(400,rainY5,400,rainY5+10);
  rainY5 += 5;
  if(rainY5 > height){
    rainY5 = 0;
  }

  // drop 6
  line(50,rainY6,50,rainY6+10);
  rainY6 += 5;
  if(rainY6 > height){
    rainY6 = 0;
  }

  // drop 7
  line(550,rainY7,550,rainY7+10);
  rainY7 += 5;
  if(rainY7 > height){
    rainY7 = 0;
  }

  noStroke();
}

// people
void drawPeople(){

  // movement
  personX += 0.8;

  // reset 
  if(personX > width + 20){
    personX = -20;
  }

  fill(0);

  // head
  ellipse(personX,430,20,20);

  // body
  rect(personX-5,440,10,25);
}
