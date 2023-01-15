//Animated Story
//By: Mark Chi
//Armenian Folklore: Occupational Hazard Part 5
//Scene 11, 12, 13
import ddf.minim.*;
Minim minim;
AudioPlayer explosion;
AudioPlayer file;
AudioPlayer applause;
AudioPlayer walk;

float[] randomX=new float[10];
float[] randomY=new float[10];

PImage b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20, b21, b22, b23, b24;
PImage[] b = new PImage[24];

boolean soundPlayer = false;
boolean shout = false;
boolean scene1P1On = true;
boolean scene1P2On = false;
boolean scene2P1On = false;
boolean scene2P2On = false;
boolean scene3On = false;
boolean waiting = false;
boolean waiting2 = false;
boolean showText = false;
boolean showText2 = false;
boolean click1 = true;
boolean click2 = false;
boolean click3 = false;
boolean banditGo = false;
boolean rugMoveWithMouse = false;
boolean swordMoving = false;
boolean textAppear = false;
boolean text2Appear = false;
boolean narration1 = false;
boolean narration2 = false;
PImage[] imags = new PImage[3];

float shake = 0;
int cur = -1;
int curImg = -1;
int borderX = 385;//-10
int borderY = 195;//+35
int borderW = 260;
int borderH = 185;
int rugX = 390;//-10
int rugY = 185;//+35
int rugW = 250;
int rugH = 200;
int banditX = 490;
int banditX2 = 430;
int banditY = 340;
int banditWid = 75;
float banditHeight = 100;
int rectWid = 380;
int rectHi = 80;
int trans = 0;
int transSpeed = 4;
int transDir = 1;
int spearX = 0;
int spearY = 20;
int spinAngle = 0;
   
int swordSpeed = 0;
int swordDir = 1;
int wid = 200;
int hi = 140;

PImage LMO;
PImage sword;
PImage background;
PImage Anahit;
PImage prince;
PImage AnahitWarrior;
PImage ancient;
PImage arrow;
PImage Bandit;
PImage banditInJail;
PImage castle;
PImage bubble;
PImage Rug;
PImage Border;
PImage Border2;
PImage Lines;
PImage textForScene1;
PImage text2ForScene1;
PFont font;
PImage heart;
int heartDIM = 3;
int heartDIM2 = 4;
int soldierDIM = 2;
int spriteX = -20;
int spriteY = 310;
int spriteSpeed = 10;
int spriteDir = 1;
int swordX = 350;
int swordY = spriteY - 200;

PImage[] heartSp = new PImage[heartDIM2*heartDIM];
PImage[] soldierSp = new PImage[soldierDIM*soldierDIM];
PImage map;
PImage pin;
PImage desert;
PImage spear;
PImage soldier;

int xPos = 0;
int xSpeed = 17;
int xDir = 1;

PImage[] theEnd = new PImage[2];

void setup(){
  size(1000,700);
  minim = new Minim (this);
  file = minim.loadFile("music.mp3");
  explosion = minim.loadFile ("explosion.mp3");
  applause = minim.loadFile("applause.mp3");
  walk = minim.loadFile("walking.mp3");
  background = loadImage("wp_20141123_0221.jpg");
  Anahit = loadImage("anahit.png");
  prince = loadImage("prince.png");
  AnahitWarrior = loadImage("anahitt.png");
  ancient = loadImage("ancient.jpg");
  arrow = loadImage("arrow.png");
  Bandit = loadImage("bandit.png");
  banditInJail = loadImage("man-in-prison-behind-bars-jail.jpg");
  castle = loadImage("castle.png");
  bubble = loadImage("bubble.png");
  sword = loadImage("sword.png");
  Rug = loadImage("rugg.jpg");
  Border = loadImage("border.png");
  imags[0] = loadImage("text.png");
  imags[1] = loadImage("textt.png");
  imags[2] = loadImage("texttt.png");
  font = createFont("unicode.corsiva.ttf", 20);
  heart = loadImage("heart.png");
  desert = loadImage("desert2.png");
  soldier = loadImage("soldier.png");
  LMO = loadImage("Letmeout.png");
  int heartW = heart.width/heartDIM2;
  int heartH = heart.height/heartDIM;
  for (int i=0; i<heartSp.length; i++){
    int x = i%heartDIM*heartW;
    int y = i/heartDIM*heartH;
    heartSp[i] = heart.get(x, y, heartW, heartH);
  }
  map = loadImage("map.png");
  pin = loadImage("pin.png");
  
  int soldierW = soldier.width/soldierDIM;
  int soldierH = soldier.height/soldierDIM;
  for (int i=0; i<soldierSp.length; i++){
    int x = i%soldierDIM*soldierW;
    int y = i/soldierDIM*soldierH;
    soldierSp[i] = soldier.get(x, y, soldierW, soldierH);
  }
  
  for (int i=0; i<10; i++) {
    randomX[i] = random(50, 800);
    randomY[i] = random(90, 600);
  }
  
  b1 = loadImage("giphy1.png");
  b2 = loadImage("giphy2.png");
  b3 = loadImage("giphy3.png");
  b4 = loadImage("giphy4.png");
  b5 = loadImage("giphy5.png");
  b6 = loadImage("giphy5(1).png");
  b7 = loadImage("giphy6.png");
  b8 = loadImage("giphy7.png");
  b9 = loadImage("giphy8.png");
  b10 = loadImage("giphy9.png");
  b11 = loadImage("giphy10.png");
  b12 = loadImage("giphy11.png");
  b13 = loadImage("giphy12.png");
  b14 = loadImage("giphy13.png");
  b15 = loadImage("giphy14.png");
  b16 = loadImage("giphy15.png");  
  b17 = loadImage("giphy16.png");
  b18 = loadImage("giphy17.png");
  b19 = loadImage("giphy18.png");
  b20 = loadImage("giphy19.png");
  b21 = loadImage("giphy20.png");
  b22 = loadImage("giphy21.png");
  b23 = loadImage("giphy22.png");
  b24 = loadImage("giphy23.png");
  
  b[0] = b1;
  b[1] = b2;
  b[2] = b3;
  b[3] = b4;
  b[4] = b5;
  b[5] = b6;
  b[6] = b7;
  b[7] = b8;
  b[8] = b9;
  b[9] = b10;
  b[10] = b11;
  b[11] = b12;
  b[12] = b13;
  b[13] = b14;
  b[14] = b15;
  b[15] = b16;
  b[16] = b17;
  b[17] = b18;
  b[18] = b19;
  b[19] = b20;
  b[20] = b21;
  b[21] = b22;
  b[22] = b23;
  b[23] = b24;
  
  theEnd[0] = loadImage("theend.png");
  theEnd[1] = loadImage("theend2.png");
}

void draw(){
  if (scene1P1On == true){
    scene1P1Draw();
  }
  else if (scene1P2On == true){
    scene1P2Draw();
  }
  else if (scene2P1On == true){
    scene2P1Draw();
  }
  else if (scene2P2On == true){
    scene2P2Draw();
  }
  else if (scene3On == true){
    scene3Draw();
  }
  showCoordinates();
}

void scene1P1Draw(){  
  textFont(font);
  image(background, 0, 0, 1000, 700);
  image(Anahit, 700, 300, 150, 400);
  image(Bandit, banditX, banditY, banditWid, banditHeight);
  image(Bandit, banditX2, banditY, banditWid, banditHeight);
  if (banditGo==true){
    if (banditX > 475){
      banditX--;
    }
    if (banditX2 > 375){
      banditX2--;
    }
    if (banditY < 400){
      banditY++;
    }
    if (banditWid < 150){
      banditWid++;
    }
    if (banditHeight < 200){
      banditHeight+=1.5;
    }
    file.pause();
    walk.play();
  }else{
    file.play();
  }
  if (banditX == 475 && banditX2 == 375 && banditY == 400 && 
      banditWid == 150 && banditHeight >= 200){
        banditGo = false;
        walk.pause();
        image(Rug, rugX, rugY, rugW, rugH);
        image(Border, borderX, borderY, borderW, borderH);
        
        if (curImg==-1){
          fill(200);
          stroke(50);
          rect(350, 50, 330, 70);
          fill(0);
          textSize(30);
          text("Conversation Starts Now...", 355, 80);
          //text("Click to continue-->", 480, 340);
          textSize(20);
          fill(89, 65, 51);
          text("Click To Continue-->", 525, 110);
        }
        if (curImg<2 && curImg>=0){
          fill(200);
          stroke(50);
          rect(350, 50, 330, 70);
          fill(0);
          textSize(30);
          text("Conversation Starts Now...", 355, 80);
          image(imags[curImg], 220, 280, 300, 225); //250 700/4 //200 315
          textSize(20);
          fill(89, 65, 51);
          text("Click To Continue-->", 525, 110);  
          fill(255);
        }  
        if (curImg==2 && waiting!=true){
          fill(200);
          stroke(50);
          rect(330, 50, 390, 100);
          image(imags[curImg], 740, 210);
          fill(0);
          textSize(30);
          text("Now, Click The Rug To Drag It\nTo Anahit's Hands.", 340, 80);
          textSize(20);
          fill(89, 65, 51);
          text("Click To Continue-->", 545, 140);
        }  
        if (rugMoveWithMouse == true){
            rugX = mouseX;
            rugY = mouseY;
            borderX = mouseX;
            borderY = mouseY + 5;
            rugW = 150;
            rugH = 100;
            borderW =150;
            borderH = 100;
        }    
        if (waiting == true){
            fill(200);
            stroke(50);
            rect(350, 50, 310, 70);
            fill(0);
            textSize(30);
            text("Well Done!", 355, 80);
            textSize(20);
            fill(89, 65, 51);
            text("Click To Continue-->", 495, 110);//800 680//515 140
        }
      }
    else{
      fill(200);
      stroke(50);
      rect(300, 50, 400, 100);
      textSize(30);
      fill(0);
      text("The Bandit Comes to Queen Anahit's\nPalace to Sell A Rug...", 305, 80);
      textSize(20);
      fill(89, 65, 51);
      text("Click To Continue-->", 545, 140);
    }
}

void scene1P2Draw(){
  image(Rug, 0, 0, 1000, 700);
  image(Border, -10, -10, 1000, 750);
  textSize(30);
  fill(255, trans);
  text("The Actual Reason for Why Anahit Bought the Rug..." , 180, 140);
  textSize(45);
  fill(240, 247, 16, trans);
  text("Hi, Honey, \nThese illiterate douchebags \nkidnapped me. Help?", 180, 200);
  fill(223, 9, 255, trans);
  text("Love You!", 180, 390);
  fill(9, 255, 132, trans);
  textSize(40);
  text("Vatchagan", 455, 390);
  tint(255, trans);
  image(heartSp[frameCount*2%heartSp.length], 375, 340);
  tint(255);
  fill(0);
  textSize(30);
  if (mousePressed){
    text("PS: You are right.\n      Literacy is IMPORTANT.", 440, 565);
    image(map, 645, 400, 150, 150);
    image(pin, 680, 430, 100, 100);
    image(arrow, 677, 468, 180, 60);
    textSize(18);
    fill(255, 215, 0);
    text("I'm HERE", 810, 500);
    fill(0);
  }
  if (trans>255 || trans<0){
    transSpeed*=-1;
  }
  trans += transSpeed * transDir;
  textSize(30);
  text("Press 2 To Next Scene", 750, 675);
  text("Click To Show Map and Additional Info", 20, 675);
}

void scene2P1Draw(){
  image(banditInJail, shake, 0, width/2, height);
  image(banditInJail, shake+width/2, 0, width/2, height);
  shake += random(-1, 1);
  if (narration1==false){
    textSize(30);
    fill(200);
    stroke(50);
    rect(350, 50, 320, 70);
    fill(0);
    text("The Bandits Are In Jail", 355, 80);
    textSize(20);
    fill(89, 65, 51);
    text("Click To Continue-->", 520, 110);
  }
  else{
    if (cur<10){
      if(shout==true){
        if (cur==0){
          image(LMO, randomX[cur], randomY[cur], 150, 100);
        }
        if (cur==1){
          for (int i=0; i<2; i++){
            image(LMO, randomX[i], randomY[i], 150, 100);
          }
        }
        if (cur==2){
          for (int i=0; i<3; i++){
            image(LMO, randomX[i], randomY[i], 150, 100);
          }
        }
        if (cur==3){
          for (int i=0; i<4; i++){
            image(LMO, randomX[i], randomY[i], 150, 100);
          }
        }
        if (cur==4){
          for (int i=0; i<5; i++){
            image(LMO, randomX[i], randomY[i], 150, 100);
          }
        }
        if (cur==5){
          for (int i=0; i<6; i++){
            image(LMO, randomX[i], randomY[i], 150, 100);
          }
        }
        if (cur==6){
          for (int i=0; i<7; i++){
            image(LMO, randomX[i], randomY[i], 150, 100);
          }
        }
        if (cur==7){
          for (int i=0; i<8; i++){
            image(LMO, randomX[i], randomY[i], 150, 100);
          }
        }
        if (cur==8){
          for (int i=0; i<9; i++){
            image(LMO, randomX[i], randomY[i], 150, 100);
          }
        }
        if (cur==9){
          for (int i=0; i<10; i++){
            image(LMO, randomX[i], randomY[i], 150, 100);
          }
        }
      }
      textSize(30);
      fill(200);
      stroke(50);
      rect(350, 50, 320, 50);
      fill(0);
      text("Keep Clicking for 10 times!", 355, 80);
    }
    if (cur==10){
      image(b[frameCount/2%b.length], 0, 0, width,height);
      file.pause();
      explosion.play();
      textSize(30);
      fill(200);
      stroke(50);
      rect(300, 30, 400, 100);
      fill(0);
      text("Congratulations!\nYou Have Executed The Bandits.", 310, 60);
      textSize(20);
      fill(89, 65, 51);
      text("Press 3 To Continue-->", 515, 120);
    }
  }
}

void scene2P2Draw(){
  image(desert, 0, 0, width, height);
  if (swordX>700 && swordY>500){
    file.pause();
  }else{
    file.play();
  }
  if (narration2==false){
    textSize(30);
    fill(200);
    stroke(50);
    rect(300, 20, 410, 80);
    fill(0);
    text("Anahit and Soldiers Are On The Way\nTo Save Prince.", 310, 50);
    textSize(20);
    fill(89, 65, 51);
    text("Click To Continue-->", 545, 90);
    image(AnahitWarrior, 200, 260, 220, 290);
    image(soldierSp[0], -20, 310, 200, 200);
    image(soldierSp[0], 60, 310, 200, 200);
  }
  else{
    image(AnahitWarrior, spriteX+220, spriteY-50, 220, 290);
    if (spriteX+220<350){
      image(soldierSp[frameCount/4%soldierSp.length], spriteX, spriteY, 200, 200);
      image(soldierSp[frameCount/4%soldierSp.length], spriteX+80, spriteY, 200, 200);
      textSize(30);
      fill(200);
      stroke(50);
      rect(300, 20, 400, 80);
      fill(0);
      text("Use 'Right' Button To Move Anahit\nAnd Soldiers.", 310, 50);
      
    }
    
    else if (spriteX+220>=350){ 
       image(soldierSp[0], spriteX, spriteY, 200, 200);
       image(soldierSp[0], spriteX+80, spriteY, 200, 200);
       image(castle, 700, 300, 200, 300);
       image(sword, swordX, swordY, wid, hi);
       swordX+=swordSpeed*swordDir;
       swordY+=swordSpeed*swordDir;
       if (swordX>700 && swordY>500){
           file.pause();
           fill(200);
           stroke(50);
           rect(350, 20, 310, 50);
           textSize(30);
           fill(0);
           if (text2Appear==false){
             text("Click To Continue", 400, 55);
           }
           else if (text2Appear==true){
             text("Press 4 To Next Scene", 380, 55);
           }
           image(b[frameCount/2%b.length], 700, 300, 200, 250);
          
           explosion.play();
           if (textAppear==true){
             image(bubble, spriteX-70, spriteY-250, 325, 280);
             textSize(20);
             text("Wait. Didn't Gandhi write that\nnon-violence is the greater\nweapon? Hmmm...Good Point.", spriteX-20, spriteY-150);
           }
       }
       else{
         textSize(30);
         fill(200);
         stroke(50);
         rect(300, 20, 380, 80);
         fill(0);
         text("Click on the sword to 'open' the\nbandits' castle to save the prince.", 310, 50);
       }
    }
  }
}

void scene3Draw(){
  explosion.pause();
  image(ancient, 0, 0, width, height);
  image(Anahit, 700, 100, 250, 500);
  image(prince, 50, 100, 300, 500);
  image(theEnd[frameCount/10%theEnd.length], 30, 80);
  applause.play();
}

void mousePressed(){
  if (scene1P1On == true){
      if (banditX == 490 && banditX2 == 430 && banditY == 340){
        banditGo = true;
      }
      if (banditX == 475 && banditX2 == 375 && banditY == 400 && 
        banditWid == 150 && banditHeight >= 200){
        
        if (curImg<2){
           curImg++;
        }
         if (waiting==true){
            scene1P1On = false;
            scene1P2On = true;
         }
       
      }
  } 
  
  if (scene2P1On == true){
    if (narration1==true){
      shout = true;
      if (cur<10){
        cur++;
      }
    }
  }
  
}

void mouseClicked(){
  if (scene1P1On == true){
    if (curImg==2){
      if (mouseX >= rugX && mouseX < rugX + rugW && mouseY >= rugY && mouseY < rugY+rugH)
      {
        rugMoveWithMouse = true;
        if (mouseX > 600 && mouseY > 480 && mouseY < 650){
          rugMoveWithMouse = false;
          waiting = true; 
        }
      }    
    }
  }
  
  if (scene2P1On==true){
    if (narration1==false){
      narration1 = true;
    }  
  }
  
  if (scene2P2On==true){
    if (narration2==false){
      narration2 = true;
    }
    if (spriteX+220>=350){
      if (mouseX>swordX && mouseX<(swordX+wid) && mouseY>swordY && mouseY<(swordY+hi)){
        swordSpeed = 10;
      }
    }
    if (swordX>700 && swordY>500){
      textAppear = true;
    }
    if (textAppear==true){
      text2Appear = true;
    }
  }
}

void keyPressed(){
  if (key == '1'){
    scene1P1On = false;
    scene1P2On = true;
  }
  if (key == '2'){
    scene1P2On = false;
    scene2P1On = true;
  }
  if (key == '3'){
    scene2P1On = false;
    scene2P2On = true;
    explosion.pause();
  }
  if (key == '4'){
    scene2P2On = false;
    scene3On = true;
  }
  if (key == '5'){
    scene3On = false;
    scene1P1On = true;
  }
  if (key==CODED){
    if (keyCode == UP){
     spriteY -= spriteSpeed * spriteDir; 
    }
    if (keyCode == DOWN){
     spriteY += spriteSpeed * spriteDir;
    }
    if (keyCode == LEFT){
     spriteX -= spriteSpeed * spriteDir; 
    }
    if (keyCode == RIGHT){
     spriteX += spriteSpeed * spriteDir; 
     if (spriteX+220>=350){
       spriteSpeed = 0;
     }
    }
  }
}

void showCoordinates() {
  fill(255);
  textSize(12);
  text("x: " + str(mouseX), 10, 10);
  text("y: " + str(mouseY), 10, 30);
}
