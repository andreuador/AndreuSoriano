public class Bombolla {
  private PVector posicio;
  private PVector velocitat;
  private color dins;
  private color vora;
  private int diametre;
  
  public Bombolla() {
    
    posicio = new PVector ((int)random(640),(int)random(480));
    velocitat = new PVector ((int)random(640),(int)random(1,5) * (-1));
    dins = color(255);
    vora = color(0);
    diametre = (int)random(5, 25);
  }
  
  void display() {
    fill(dins);
    stroke(vora);
    ellipse(posicio.x, posicio.y, diametre, diametre);
  }
  
  void update() {
    posicio = new PVector (posicio.x,  posicio.y += velocitat.y);
    if (posicio.y <= 0) {
      posicio = new PVector (posicio.x, (int)random(480));
    }
  }
}
