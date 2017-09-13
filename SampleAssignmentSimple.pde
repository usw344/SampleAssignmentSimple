void setup()
{
	size(200,100);
}
void draw()
{
	head();
	face();
}
void head()
{
	fill(255,255,0);
	ellipse(100,50,80,80);
}
void face()
{
	arc(100,50,60//Dan Schellenberg
//Sept 12, 2017
//idea from http://thekidshouldseethis.com/post/the-footstep-illusion-more-optical-tricks-from-akiyoshi-kitaoka

//global variables
//should just be able to change these, and the program should adapt to the new values...
float stripeWidth = 20;
float stripeSpacing = stripeWidth*2;
float rectWidth = stripeWidth*2;
float rectHeight = 150;
float rectVerticalSpacer = 150;
float rectHorizontalSpacer = rectWidth*3;
float rectX = 0;
float rectY = 200;
boolean movingRight = true;
float movementSpeed = 1;

void setup() {
  size(1200, 800);
  noStroke();
}

void draw() {
  background(255);
  //drawStripesFullScreen();
  drawStripesPartialScreen();
  moveTheBoxes();
  showMovingBoxes();
}

void drawStripesFullScreen() {
  fill(0);
  for (float x=stripeSpacing/2; x<width; x+=stripeSpacing) {
    rect(x, 0, stripeWidth, height);
  }
}

void drawStripesPartialScreen() {
  fill(0);
  for (float x=stripeSpacing/2.0+width/4; x<3.0*width/4; x+=stripeSpacing) {
    rect(x, 0, stripeWidth, height);
  }
}

void moveTheBoxes() {
  if (movingRight) {
    rectX += movementSpeed;  //move the boxes to the right
  } 
  else {
    rectX -= movementSpeed;  //move the boxes to the left
  }
  if (rectX > width-(rectWidth+3*rectHorizontalSpacer) || rectX < 0) {
    movingRight = !movingRight;  //switch directions if hit the left or right edge of the screen
  }
}

void showMovingBoxes() {
  showRow(rectX, rectY);
  showRow(rectX-stripeWidth, rectY+rectHeight+rectVerticalSpacer);
}

void showRow(float x, float y) {
  for (int i=0; i<4; i++) {
    //first and fourth should be blue, second and third should be yellow
    //remember we're counting from 0, though...
    if (i==0 || i== 3) {
      fill(0, 0, 255);
    } 
    else {
      fill(255, 255, 0);
    }

    rect(x+rectHorizontalSpacer*i, y, rectWidth, rectHeight);
  }
},60,PI/8,7*PI/8);
	fill(0,0,0);
	ellipse(85,40,10,15);
	ellipse(115,40,10,15);
}
