class GoL {
  int x, y, position, size, energy;
  int goes=0;      //-1 disappear; 0 stays the same; 1-8 movement; 9 proto; 10 bactery; 11 animal
  char type, colony;
  boolean intelligence;
  GoL(int tx, int ty, int tposition, int tsize, int tenergy, char ttype, char tcolony, boolean tintelligence) {
    x=tx;
    y=ty;
    position=tposition;
    size=tsize;
    energy=tenergy;
    type=ttype;
    colony=tcolony;
    intelligence=tintelligence;
  }
  void display() {
    if (type=='b') {
      noStroke();
      fill(0);
      ellipse(x, y, size/2, size/2);
      fill(102);
      ellipse(x, y, size/2-2, size/2-2);
      if (colony=='f') fill(157, 98, 255);
      if (colony=='s') fill(71, 227, 150);
      ellipse(x, y, size/6, size/6);
      strokeWeight(1);
    }
    if (type=='p') {
      noStroke();
      fill(213, 250, 167, 120);
      rect(x-size/2, y-size/2, size, size);
      strokeWeight(1);
    }
    if (type=='a') {
      stroke(127);
      fill(102);
      beginShape();
      vertex(x-size/2, y);
      vertex(x-size/8, y-size/8);
      vertex(x, y-size/2);
      vertex(x+size/8, y-size/8);
      vertex(x+size/2, y);
      vertex(x+size/8, y+size/8);
      vertex(x, y+size/2);
      vertex(x-size/8, y+size/8);
      endShape(CLOSE);
      if (colony=='f') fill(157, 98, 255);
      if (colony=='s') fill(71, 227, 150);
      beginShape();
      vertex(x-size/2, y-size/2);
      vertex(x, y-size/4);
      vertex(x+size/2, y-size/2);
      vertex(x+size/4, y);
      vertex(x+size/2, y+size/2);
      vertex(x, y+size/4);
      vertex(x-size/2, y+size/2);
      vertex(x-size/4, y);
      endShape(CLOSE);
    }
  }
}