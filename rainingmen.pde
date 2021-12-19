import ddf.minim.*;//use minim library
Minim minim;
AudioPlayer player;

import processing.serial.*;//serialcommunication
Serial myPort;

PImage bg; //load background image
String rain;
int num = int(random(150,200));
drop d[] = new drop[num];

void setup(){
  fullScreen();
  
  bg = loadImage("bg.jpg");
  
  minim = new Minim(this);
  player = minim.loadFile("rain.wav");
  
  String portName = Serial.list()[0];
  myPort  = new Serial(this, portName, 9600);
  for(int i=0; i<num; i++)
  {
    d[i]= new drop(int(random(width)),int(random(height)));
  }
}
void draw(){
  background(255);
  image(bg,0,0,width,height);
  
  if(myPort.available()>0){
  
  rain = myPort.readString();
  println(rain);
  
   raindrop();
   player.play();
  }
  
   else{
       player.pause();
   }
}

void raindrop()
{
    for(int i=0; i<num; i++)
  {
    d[i].display();
    d[i].move();
  }
}
