class Monster4 extends Objects {
  int x=224, y=705;
  int w=15, h=15;
  int speed=1;
  Monster4() {
    super.setPosition(x, y);
    super.setRectangle(w, h);
  }
  void draw(){
    image(monster,x,y,w,h);
  }
  void move(){
    if(player2.x<x && !grid2.is_wall(x-w/4, y) ){
      x-=speed;
      super.setPosition(x, y);
    }
    else if(player2.x<x && !grid2.is_wall(x-w, y) && !grid2.is_wall(x+w, y) ){
      x+=speed;
      super.setPosition(x, y);
    }
    if(player2.x>x && !grid2.is_wall(x+w, y) ){
      x+=speed;
      super.setPosition(x, y);
    }
    if(player2.y<y && !grid2.is_wall(x,y-h/2+4) && !grid2.is_wall(x+2,y-h/2+4)){
      y-=speed;
      super.setPosition(x, y);
    }
    if(player2.y>y && !grid2.is_wall(x,y+h)){
      y+=speed;
      super.setPosition(x, y);
    }
  }
}
