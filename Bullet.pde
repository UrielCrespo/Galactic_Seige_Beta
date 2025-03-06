//Bullet Class

// Version 1.0

class Bullet{
  // Bullet Attributes
   float x, y;
   float speed;
   int damage;
   float bulletWidth, bulletHeight;
   
   // Constructor
   Bullet(float x, float y, float speed, int damage, float bulletWidth, float bulletHeight){
     this.x = x;
     this.y = y;
     this.speed = speed;
     this.damage = damage;
     this.bulletWidth = bulletWidth;
     this.bulletHeight = bulletHeight;
   }
   
   // To move up
   void moveDownOrion() {
     y -= speed;
   }
   
   void moveUpNodriza(){
    y += speed;
   }
  
   // To shape the bullet (Simplified version, it only draws a red ellipse)
   void display() {
     fill(255, 0, 0);
     ellipse(x, y, bulletWidth, bulletHeight);
   }

   // To make damage
   int getDamage() {
     return damage;
   }
}

/*  
  TO DO FOR ADVANCED VERSION:
    modificar display() para que no solo dibuje una elpise roja, si no una imagen personalizada para la bala
    daño personalizado para cada tipo de bala
    velocidad personalizada para cada tipo de bala
    tamaño e imagen personalizada para cada tipo de bala
    
*/
