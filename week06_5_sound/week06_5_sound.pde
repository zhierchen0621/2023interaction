import processing.sound.*;

SoundFile file;

void setup(){
  size(300,300);
  file = new SoundFile(this,"shu.mp3");
  file.play();
}
void draw(){
  
}
