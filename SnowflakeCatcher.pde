Snowflake [] white;


void setup()
{
  size(300, 300);
  //create an array of snowflakes
  white=new Snowflake[100];
  for(int i=0; i<white.length; i++)
  {
    white[i]=new Snowflake();
  }
  background(0);
}



void draw()
{
  
  //create falling snowflakes
  for(int i=0; i<white.length; i++){
   
    white[i].erase();
    white[i].lookDown();
    white[i].move();
    white[i].wrap();
    white[i].show();

  }
}  
void mouseDragged()
{
  stroke(200, 0, 40);
  strokeWeight(5);
  line(pmouseX,pmouseY,mouseX,mouseY);
  noStroke();
}


class Snowflake
{
  int x, y;//class member variable declarations
  boolean isMoving;

  Snowflake()
  {
    //class member variable initializations
    x=(int)(Math.random()*301);
    y=(int)(Math.random()*301);
    isMoving=true;
  }

  void show()
  {
    fill(255);
    ellipse(x,y,7,7);
  }

  void lookDown()
  {
    //checking if line beneath is drawn
    if(-5<y && y<305){
      if(get(x,y+4) != color(0)) {
        isMoving = false;
      }
      else {
        isMoving = true;
      }
    }
  }

  void wrap()
  {
    if(y==305)
    {
      y=-5;
      x=(int)(Math.random()*301);
    }
  }

  void erase(){
    fill(0);
    ellipse(x,y-2,8,7);
  }

  void move()
  {
    //moves snowflake
    if(isMoving==false);
      y=y+1;

    
  }

}


