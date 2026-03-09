// Monster  

float bodyX = 300;
float speedX = 2;
float speedY = 1.2;
float bodyY = 300;
float eyeSize = 25;
boolean eyeGrowing = true;

float R=150;
float G=0;
float B=150;

// Arm move
float armOffset = 0;
boolean armMovingRight = true;

void setup() 
{size(600, 600);}

void draw() 
{background(100, 150, 200);

// Movement
bodyX += speedX;
bodyY += speedY;

// Bounce
if (bodyX > width - 100 || bodyX < 100) 
{speedX=-1;}

if (bodyY > height - 125 || bodyY < 180) 
{speedY=-1;}

  // Eye breathing
  if (eyeGrowing) 
{eyeSize += 0.2;
if (eyeSize > 30) 
{eyeGrowing = false;}

eyeSize -= 0.2;
if (eyeSize < 20) 
{eyeGrowing=true;}}

// Arm swing
  if (armMovingRight) 
  
{armOffset=1;
    if (armOffset > 15) 
    {armMovingRight = false;}} 
    else {armOffset -= 1;
    if (armOffset < -15) 
    {armMovingRight = true;}}

  drawMonster();
}

void drawMonster() {

// Body
fill(R, G, B);
ellipse(bodyX, bodyY, 200, 250);

// Head
fill(R - 50, G, B - 50);
ellipse(bodyX, bodyY - 120, 150, 140);

// Eyes
fill(255);
ellipse(bodyX - 40, bodyY - 140, 40, 50);
ellipse(bodyX + 40, bodyY - 140, 40, 50);

fill(0);
ellipse(bodyX - 40, bodyY - 140, eyeSize, eyeSize + 5);
ellipse(bodyX + 40, bodyY - 140, eyeSize, eyeSize + 5);

// Mouth
fill(255, 0, 0);
arc(bodyX, bodyY - 100, 80, 40, 0, PI);

// Teeth
fill(255);
triangle(bodyX - 20, bodyY - 100, bodyX - 10, bodyY - 110, bodyX - 15, bodyY - 90);
triangle(bodyX + 10, bodyY - 100, bodyX + 20, bodyY - 110, bodyX + 15, bodyY - 90);

// Horns
fill(80, 0, 80);
triangle(bodyX - 50, bodyY - 200, bodyX - 20, bodyY - 180, bodyX - 80, bodyY - 180);
triangle(bodyX + 50, bodyY - 200, bodyX + 20, bodyY - 180, bodyX + 80, bodyY - 180);

// Arms
fill(120, 0, 120);
rect(bodyX - 100 + armOffset, bodyY - 20, 30, 150);
rect(bodyX + 70 - armOffset, bodyY - 20, 30, 150);

// Hands
fill(80, 0, 80);
ellipse(bodyX - 85 + armOffset, bodyY + 130, 40, 30);
ellipse(bodyX + 85 - armOffset, bodyY + 130, 40, 30);

// Belly
fill(200, 0, 200);
ellipse(bodyX, bodyY + 50, 120, 150);

  // Spots
  fill(255, 200, 0);
  ellipse(bodyX - 50, bodyY, 20, 20);
  ellipse(bodyX, bodyY - 20, 25, 25);
  ellipse(bodyX + 50, bodyY + 20, 15, 15);
}

void mousePressed() {
  R = random(100, 255);
  G = random(0, 100);
  B = random(100, 255);
}

void mouseDragged() {
  bodyX = constrain(mouseX, 150, width - 150);
  bodyY = constrain(mouseY, 200, height - 150);
}
