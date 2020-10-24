void game(){
  introgametheme.play();
  background(#BCA48C);
  
  //line in middle
  stroke(#77665C);
  strokeWeight(3);
  line(width/2,0,width/2,height);
  
  //text score & timer
  textFont(Moonliona);
  textSize(75);
  text(rscore, width/2+50,50);
  text(lscore, width/2-50,50);
  textSize(35);
  fill(0);
  //text(timer,width/2,50);
  timer = timer - 1;
  
  //paddles
  strokeWeight(0);
  fill(#77665C);
  circle(leftx,lefty,leftd);
  circle(rightx,righty,rightd);
  
  //move paddles
  if (wkey == true) lefty = lefty - 5;
    if (lefty < 80) wkey = false;
  if (skey == true) lefty = lefty + 5;
    if (lefty > 520) skey = false;
    
  if (AI == false){
    if (upkey == true) righty = righty - 5;
      if (righty < 80 ) upkey = false;
    if (downkey == true) righty = righty + 5;
      if (righty > 520) downkey = false;
  } else {
      if (bally > righty) righty = righty + 4;                       
      if (bally < righty) righty = righty - 4;
   }
  
  
  //ball
  fill(#DBDFE2);
  circle(ballx,bally,balld);
  
  
  //moving
  if (timer < 0){
    ballx = ballx + vballx;
    bally = bally + vbally;
  }
  
  //score
  if (ballx < 25){
    rscore++;
    ballx = width/2;
    bally = height/2;
    vballx = -5;
    vbally = 0;
    timer = 100;
    scoretheme.rewind();
    scoretheme.play();
    balltimertheme.rewind();
    balltimertheme.play();
  }
  if (ballx > width-25){ 
    lscore++;
    ballx = width/2;
    bally = height/2;
    vballx = 5;
    vbally = 0;
    timer = 100;
    scoretheme.rewind();
    scoretheme.play();
    balltimertheme.rewind();
    balltimertheme.play();
  }
  
  //bounce walls
  if (bally < 25 || bally > height-25){
    bouncetheme.rewind();
    bouncetheme.play();
    vbally = vbally * -1;
  }
  
  //bounce paddles
  if (dist(leftx,lefty,ballx,bally) <= leftd/2 + balld/2){
    vballx = (ballx - leftx)/10;
    vbally = (bally - lefty)/10;
    bouncetheme.rewind();
    bouncetheme.play();
  }
  if (dist(rightx,righty,ballx,bally) <= rightd/2 + balld/2){
    vballx = (ballx - rightx)/10;
    vbally = (bally - righty)/10;
    bouncetheme.rewind();
    bouncetheme.play();
  }
  
  if (rscore == 3){
    mode = gameover;
  }
  
  if (lscore == 3){
    mode = gameover;
  }
 
}


void gameClicks(){
  if (mouseX > 0 && mouseX < 800 && mouseY > 0 && mouseY < 600){
    mode = pause;
  }
}
