void pause(){
  introgametheme.pause();
  bouncetheme.pause();
  scoretheme.pause();
  balltimertheme.pause();
  
  //text
  fill(#DBDFE2);
  textFont(Moonliona);
  textSize(150);
  text("Pause",width/2,height/2-50);
}



void pauseClicks(){
  if (mouseX > 0 && mouseX <  800 && mouseY > 0 && mouseY < 600){
    mode = game;
  }
} 
