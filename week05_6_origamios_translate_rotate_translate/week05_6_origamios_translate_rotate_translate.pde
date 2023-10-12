ArrayList<PVector>pt;//大的資料結構ArrayList
void setup()
{
  size(400,400,P3D);
  pt = new ArrayList<PVector>();
}//初始化，把大的資料結構準備好(裡面放小資料結構)
void draw()
{
  background(#FAD7EC);
  
  pushMatrix();
    if(mousePressed && mouseButton ==RIGHT){
      translate(200,200);
      rotateY(radians(frameCount));
      translate(-200,-200);
  }
  for(PVector p:pt){
    ellipse(p.x,p.y,10,10);
  }
  beginShape();
  for(PVector p:pt){//特殊的for迴圈，得小資料結構
    vertex(p.x,p.y);
  }
  endShape();
  popMatrix();
}
void mousePressed()
{
  if(mouseButton==LEFT){
  pt.add(new PVector(mouseX,mouseY)); 
  }
}//大的資料結構裡，加入小的PVector的物件
