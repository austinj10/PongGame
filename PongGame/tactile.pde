void texttactile(int x,int y,int w,int h){
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    fill(30);
    textSize(100);
  } else {
    textSize(100);
  }
}
