class drop{
  PImage img;
  int x,y;
  int speed;
  
  drop(int x, int y){
    this.x = x;
    this.y = y;
    speed =int( random(5,8));
  }
  void display()
  {
    img = loadImage("man.png");
    image(img,x,y,40,80);
  }
  void move()
  {
    y = y+ speed;
    
    if(y>height)
    {
      y = 0;
      x =int( random(width));
    }
}
}
