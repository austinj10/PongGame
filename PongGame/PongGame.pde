//Austin Jeon
//Oct 15,2020
//Block 1-1B

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound variables
Minim minim;
AudioPlayer introgametheme, gameovertheme, bouncetheme, scoretheme, balltimertheme;

//mode framework
int mode;
final int intro    = 0;
final int options  = 1;
final int game     = 2;
final int pause    = 3;
final int gameover = 4;

//paddle & ball (entity) variables
float leftx, lefty, leftd;//left paddle
float rightx, righty, rightd;//right paddle
float ballx, bally, balld;//ball
boolean AI;

//moving
float vballx,vbally;

//keyboard variables
boolean wkey,skey,upkey,downkey;

//text
PFont Moonliona;

//scoring
int rscore;
int lscore;
int timer;

void setup(){
  size(800,600,P2D);
  mode = intro;

  //text
  textAlign(CENTER,CENTER);
  Moonliona = createFont("Moonliona.ttf",200);
  
  //initialize paddles (maybe move the circles left or right to make it quarter of a circle)
  leftx = -20;
  lefty = height/2;
  leftd = 150;
  
  rightx = width+20;
  righty = height/2;
  rightd = 150;
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 50;
  vballx = 5;
  vbally = 0;
  
  //initialize keyboard variables
  wkey = skey = upkey = downkey = false;
  
  //initialize score
  rscore = 0;
  lscore = 0;
  timer = 100;
 
  //Minim
  minim = new Minim(this);
  introgametheme = minim.loadFile("8-bitloop.mp3");
  bouncetheme = minim.loadFile("bounce.mp3");
  scoretheme = minim.loadFile("score.mp3");
  gameovertheme = minim.loadFile("victory.mp3");
  balltimertheme = minim.loadFile("ballinmiddle.mp3");
}

void draw(){
  if (mode == intro){
    intro();
  } else if (mode == game){
    game();
  } else if (mode == pause){
    pause();
  } else if (mode == gameover){
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
