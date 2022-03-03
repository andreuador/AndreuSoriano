/*Programació orientada a objectes
*Cervesa
*@author Andreu Soriano Serra
*@since 21/02/2022
*/

final int MAX = 130;
Bombolla [] b;

void setup() {
  size(640, 480);
  b = new Bombolla [MAX];
  
  omplir();
}

void draw() {
  clear();
  background(242,142,28);
  for (int i = 0; i < MAX; i ++) {
    b[i].display();
    b[i].update();
  }
}

void omplir() {
  for (int i = 0; i < MAX; i++) {
    b[i] = new Bombolla();
  }
}
