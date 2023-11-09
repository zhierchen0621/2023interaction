PImage img;
void setup(){
  size(800,600);//鍵盤寬度800
  img = loadImage("keyboard.png");
  rectMode(CENTER);//用中心點，來畫四邊形
}
void draw(){
  background(#FFFFF2);//淡黃色，清背景
  image(img,0,600-266);
  fill(255,0,0,128);//半透明的紅色
  rect(mouseX,mouseY,28,30,5);//5=方框的圓滑邊邊
}
void mousePressed(){
  print(mouseX,mouseY);//定位，印出mouse座標
}
