void setup()
{
  size(400,400,P3D);//Processing 的3D功能
}
void draw()
{
  background(#FCD6F0);//粉紅色背景
  pushMatrix();//備份矩陣
    translate(mouseX,mouseY);//移動
    rotateY(radians(mouseX));//對Y軸旋轉
    fill(215,238,250);//面填成藍色
    box(100);//3D的盒子、方塊
     
    noFill();//面不要填
    scale(2);//放大2倍
    box(100);//雖然是100的盒子，但上面有放大，他就放大了
  popMatrix();//還原矩陣
}
