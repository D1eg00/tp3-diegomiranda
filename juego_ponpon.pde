float posX;
float posY;
float speedX;
float speedY;
boolean gameOver=true;

void setup(){
  size (400,400);
  rectMode(CENTER);
  posX = width/2;
  posY = height/2;
  speedX= (int)random(1,6);
  speedY= (int)random(1,6);
}

void draw(){
  background(0);
  fill(255);
  
  if (gameOver==true){
   text("GAME OVER", width/2, height/2);
   
  }
  else{
    text("JUGAR",width/2,height/2);
    ellipse(posX,posY,20,20);
    rect(mouseX,height*0.9,50,10);
    if(posX>width){
      speedX = -1*speedX;
      posX = width;
    } else if (posX<0) {
      speedX = -1*speedX;
      posX =0;
    }  else if (posY<0) {
      speedY = -1*speedY;
      posY =0;
} else if (posY>height) {
   speedY = -1*speedY;
   posY = height;
}
 if (posX > mouseX-30 && posX < mouseX+30
  && posY > 0.9*height-5
  && posY < 0.9*height+5) {
  speedY = -1*speedY;
  }
  if (posY==height){
    posX = width/2;
    posY = height/2;
    gameOver = true;
    
  }
  
  
  posX = posX + speedX;
  posY = posY + speedY;
 
}
}

void keyPressed() {

  
  if (gameOver==true){
    gameOver= false;
  }
}      
      
    
      
      
  
