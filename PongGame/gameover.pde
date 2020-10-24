void gameover(){
  introgametheme.pause();
  bouncetheme.pause();
  scoretheme.pause();
  balltimertheme.pause();
  gameovertheme.play();
  
  background(#DBDFE2);
  if (lscore == 3){
  fill(#BFB2A9);
  textFont(Moonliona);
  textSize(150);
  text("Left Victory!",width/2,height/2-150);
  } 
  
  if (rscore == 3){
  fill(#BFB2A9);
  textFont(Moonliona);
  textSize(150);
  text("Right Victory!",width/2,height/2-150);
  }
}



void gameoverClicks(){
  reset();
  mode = intro;
  if (mouseX > 735 && mouseX < 790 && mouseY > 510 && mouseY < 590){
    exit();
  }
}



void reset(){
  introgametheme.rewind();
 
  //score
  lscore = 0;
  rscore = 0;
  
  //paddles
  lefty = height/2;
  righty = height/2;

  //ball
  vballx = 5;
  vbally = 0;
 
}
