// Plataforma (Orion Defender)
class OrionDefender {
  float x, y;
  float platformWidth, platformHeight;
  float speed;
  ArrayList<Bullet> bullets;
  int lives;
  int score;

  float bulletSpeed = 5;
  int bulletDamage = 10;
  float bulletWidth = 10;
  float bulletHeight = 20;

  OrionDefender(float x, float y, float platformWidth, float platformHeight, float speed) {
    this.x = x;
    this.y = y;
    this.platformWidth = platformWidth;
    this.platformHeight = platformHeight;
    this.speed = speed;
    this.bullets = new ArrayList<Bullet>();
    this.lives = 3;
    this.score = 0;
  }

  void move(boolean moveLeft, boolean moveRight) {
    if (moveLeft && x > 0) {
      x -= speed;
    }
    if (moveRight && x + platformWidth < width) {
      x += speed;
    }
  }

  void shoot() {
    Bullet bulletLeft = new Bullet(x, y, bulletSpeed, bulletDamage, bulletWidth, bulletHeight);
    Bullet bulletRight = new Bullet(x + platformWidth, y, bulletSpeed, bulletDamage, bulletWidth, bulletHeight);
    bullets.add(bulletLeft);
    bullets.add(bulletRight);
  }
  
  void takeDamage() {
     lives--;
     if (lives <= 0) {
       gameOver();
     }
   }

   void collectSupply() {
     score += 10;
   }

   void gameOver() {
     println("Game Over! Final score: " + score);
   }

   void display() {
     fill(255);
     rect(x, y, width, height);
   }
 
  /*  
  TO DO FOR ADVANCED VERSION: Methods to modify bullet attributes (when the player picks up a power-up)
  
  void upgradeBulletSpeed(float newSpeed) {
    
  }

  void upgradeBulletDamage(int newDamage) {
    
  }

  void upgradeBulletSize(float newWidth, float newHeight) {
    
  }
*/

}
