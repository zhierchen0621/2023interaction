PImage img;
int [][] pos = {{93,489},{245,524},{179,525},{160,492},{149,457},{195,490},{230,491},{264,488},{324,457},{299,489},{330,490},{365,490},{314,523},{279,526},{359,454},{390,456},{82,455},{185,457},{126,489},{219,456},{288,458},{208,526},{116,455},{145,526},{255,456},{108,523}};
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
  fill(0,255,0,128);//半透明的綠色
  for(int i=0; i<26;i++){
    if(ID<typing.length() && typing.charAt(ID)-'a'== i) rect(pos[i][0],pos[i][1],28,30,5);
    if(pressed[i]) rect(pos[i][0],pos[i][1],28,30,5);
  }
  textSize(50);
  fill(0);//黑色的字
  text(typing,50,50);//要打的字
  fill(255,0,0);//紅色
  if(ID<typing.length()) text(typed+typing.charAt(ID),50,100);//現在要打的字,是typing.charAt(0)
  fill(0);//再用黑色，秀出已經打好的字
  text(typed,50,100);//已經打好的字
}
String typing = "printfprintfprintf";
String typed = "";//一開始打了0個字
int ID = 0;//第幾個字母要被打
boolean [] pressed = new boolean[26];//Java的陣列宣告，都是0或false
void keyPressed(){
  if(key>='a'&&key<='z') {
    if(ID<typing.length() && key==typing.charAt(ID)){//字母正確就往下
      pressed[key-'a']=true;
      typed += key;
      ID ++;
    }else{
      background(255,0,0);//畫面紅色閃一下背景
    }
  }
}
void keyReleased(){
  if(key>='a'&&key<='z') pressed[key-'a']=false;
}
void mousePressed(){
  println(mouseX,mouseY);
}
