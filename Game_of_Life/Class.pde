class GoL {
  int x, y, position, goes, size, energy;
  char type, colony;
  boolean intelligence;
  GoL(int tx, int ty, int tposition, int tgoes, int tsize, int tenergy, char ttype, char tcolony, boolean tintelligence) {
    x=tx;
    y=ty;
    position=tposition;
    goes=tgoes;
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
      ellipse(x,y,size/2-2,size/2-2);
      if (colony=='f') fill(157, 98, 255);
      if (colony=='s') fill(71, 227, 150);
      ellipse(x,y,size/6,size/6);
      strokeWeight(1);
    }
    if (type=='p'){
      noStroke();
      fill(213,250,167,120);
      rect(x-size/2,y-size/2,size,size);
      strokeWeight(1);
    }
  }
}