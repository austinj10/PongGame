void intro(){
  gameovertheme.pause();
  introgametheme.play();
  
  background(#BCA48C);//https://www.colourlovers.com/palette/4767344/Minimal use these colours
  
  //title text
  fill(#DBDFE2);
  textFont(Moonliona);
  textSize(200);
  text("Pong!",width/2,100);
  
  //1 player text tactile
  strokeWeight(0);
  fill(#BCA48C);
  rect(width/2-325,350,250,100);
  fill(#DBDFE2);
  textSize(100);
  texttactile(width/2-325,350,250,100);
  text("1 Player",width/2-200,375);
  
  //2 players text tactile
  strokeWeight(0);
  fill(#BCA48C);
  rect(width/2+50,350,300,100);
  fill(#DBDFE2);
  textSize(100);
  texttactile(width/2+50,350,300,100);
  text("2 Players", width/2+200,375);
}



void introClicks(){
  if (mouseX > width/2-325 && mouseX < width/2-75 && mouseY > 350 && mouseY < 450){
    mode = game;
    AI = true;
  } else if (mouseX > width/2+50 && mouseX < width/2+350 && mouseY > 350 && mouseY < 450){
    mode = game;
    AI = false;
  }
}
