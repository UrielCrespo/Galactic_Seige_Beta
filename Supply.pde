// Supply class
class Supply{
  // Supply attributes
  private float supply_x, supply_y;
  private float supply_speed;
  private float supply_width, supply_height;
  private int supply_type;
  
  // Constructor
  Supply(float supply_x, float supply_y, float supply_speed, float supply_width, float supply_height, int supply_type){
  this.supply_x = supply_x;
  this.supply_y = supply_y;
  this.supply_speed = supply_speed;
  this.supply_width = supply_width;
  this.supply_height = supply_height;
  this.supply_type = supply_type;
  }
  
  // Move down supply
  void moveDownSupply() {
    supply_y += supply_speed;
  }
  
  // Display supplies skins
  void displaySupply(){
    noStroke();
    // Damage supply skin
    if (supply_type == 1) {
      fill(255, 0, 0);  
      circle(supply_x, supply_y, supply_width); 
    // Speed supply skin
    } else if (supply_type == 2) {
      fill(0, 0, 255); 
      circle(supply_x, supply_y, supply_width); 
      // Extra points supply skin
    } else if (supply_type == 3){
      fill(255, 255, 0); 
      circle(supply_x, supply_y, supply_width);
    }
  
  }
  
  // Is off screen supply?
  boolean isOffScreenSupply() {
  return (supply_y > height); 
  }
  
  //getters
  float getX() {
    return supply_x;
  }
  
  float getY() {
    return supply_y;
  }
  
  float getWidth() {
    return supply_width; 
  }
  
  float getHeight() {
    return supply_height;
  }
  
  int getType() {
    return supply_type; 
  }
}
