// Bomb Class
class Bomb{
  // Bomb Attributes
  private float bomb_x, bomb_y;
  private float bomb_speed;
  private float bomb_width, bomb_height;
  
  // Constructor
  Bomb(float bomb_x, float bomb_y, float bomb_speed, float bomb_width, float bomb_height){
  this.bomb_x = bomb_x;
  this.bomb_y = bomb_y;
  this.bomb_speed = bomb_speed;
  this.bomb_width = bomb_width;
  this.bomb_height = bomb_height;
  }
  
  // Move down
  void moveDownBomb(){
    bomb_y += bomb_speed;
   }
   
   // Display bomb skin
   void displayBomb() {
     fill(150);
     circle(bomb_x, bomb_y, bomb_width);
   }
   
   // is off screen bomb?
   boolean isOffScreenBomb() {
    return (bomb_y > height);
  }
  
  // getters
  float getX() {
    return bomb_x;
  }
   
  float getY() {
    return bomb_y;
  }
  
  float getWidth() {
    return bomb_width;
  }
  
  float getHeight() {
    return bomb_height;
  }
}
