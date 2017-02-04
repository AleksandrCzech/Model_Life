GoL[] element;
int size=20;
int scr_width=800;
int scr_height=600;
int element_size=(scr_width/size)*(scr_height/size)+1;
boolean[] checked=new boolean[element_size];
void setup() {       //полная инициализация
  size(800, 600);
  frameRate(30);
  smooth();
  element=new GoL[element_size];
  for (int i=0; i<element_size; i++)
  {
    checked[i]=false;
    if (i==0) {
      element[i]=new GoL(-1, -1, i, 0, size, 0, 'e', 'e', false);
    } else {
      element[i]=new GoL(((i-1)%(scr_width/size))*size+size/2, (floor((i-1)/(scr_width/size)))*size+size/2, i, 0, size, 0, 'e', 'e', false);
    }
  }
  initialize(element, element_size, 'b', 'f');
  initialize(element, element_size, 'b', 's');
  initialize(element, element_size, 'p', 'e');
}
void draw() {       //основной блок
  background(255);
  for (int i=1; i<element_size; i++) {
    element[i].display();
  }
  animalCreation(element, checked);
}
void initialize(GoL[] el, int l, char t, char c)       //инициализация системы
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
void animalCreation(GoL[] el, boolean[] checked) {       //превращение бактерий в организмы
  for (int i=1; i<el.length; i++) {
    if (((i-1)%40<38)&&(!checked[i])&&(el[i].type=='b')) {
      if ((!checked[i+1])&&(!checked[i+2])&&(el[i].colony==el[i+1].colony)&&(el[i].colony==el[i+2].colony)&&(el[i+1].type=='b')&&(el[i+2].type=='b')) {
        checked[i]=true;
        checked[i+1]=true;
        checked[i+2]=true;
        el[i].goes=4;
        el[i+2].goes=8;
      }
    }
    if ((floor((i-1)/40)<28)&&(!checked[i])&&(el[i].type=='b')) {
      if ((!checked[i+40])&&(!checked[i+80])&&(el[i].colony==el[i+40].colony)&&(el[i].colony==el[i+80].colony)&&(el[i+40].type=='b')&&(el[i+80].type=='b')) {
        checked[i]=true;
        checked[i+40]=true;
        checked[i+80]=true;
        el[i].goes=6;
        el[i+80].goes=2;
      }
    }
  }
}
void bacteryCreation() {       //появлений бактерий
}
void protoCreation() {       //появление протоплазмы
}
int intelligence(GoL[] el, int el_num) {       //ии для организма
  int go=0;
  return go;
}