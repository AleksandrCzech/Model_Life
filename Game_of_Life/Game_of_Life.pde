GoL[] element;
int size=20;
int scr_width=800;
int scr_height=600;
int element_size=(scr_width/size)*(scr_height/size)+1;
void setup() {
  size(800, 600);
  smooth();
  element=new GoL[element_size];
  for (int i=0; i<element_size; i++)
  {
    if (i==0) {
      element[i]=new GoL(-1, -1, i, 0, size, 0, 'e', 'e', false);
    } else {
      element[i]=new GoL(((i-1)%(scr_width/size))*size+size/2, (ceil((i-1)/(scr_width/size)))*size+size/2, i, 0, size, 0, 'e', 'e', false);
    }
  }
  initialize(element, element_size, 'b', 'f');
  initialize(element, element_size, 'b', 's');
  initialize(element, element_size, 'p', 'e');
}
void draw() {
  background(255);
  for (int i=1; i<element_size; i++) {
    element[i].display();
  }
}
void initialize(GoL[] el, int l, char t, char c)
{
  int n=(l-1)/4;
  while (n>0) {
    int curr = floor(random(1, l));
    if (el[curr].type=='e') {
      el[curr].type=t;
      el[curr].colony=c;
      n--;
    }
  }
}
void animalCreation(GoL[] el, int el_num, boolean[] checked) {
}
int intelligence(GoL[] el, int el_num) {
  int go=0;
  return go;
}