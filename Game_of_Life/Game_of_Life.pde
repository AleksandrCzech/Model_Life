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
      element[i]=new GoL(-1, -1, i, size, 0, 'e', 'e', false);
    } else {
      element[i]=new GoL(((i-1)%(scr_width/size))*size+size/2, (floor((i-1)/(scr_width/size)))*size+size/2, i, size, 0, 'e', 'e', false);
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
  bacteryCreation(element, checked);
  bacteryDying();
  protoCreation();
  move();
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
void animalCreation(GoL[] el, boolean[] ischecked) {       //превращение бактерий в организмы
  for (int i=1; i<el.length; i++) {
    if ((el[i].x<scr_width-size*2)&&(!ischecked[i])&&(el[i].type=='b')) {
      if ((!ischecked[i+1])&&(!ischecked[i+2])&&(el[i].colony==el[i+1].colony)&&(el[i].colony==el[i+2].colony)&&(el[i+1].type=='b')&&(el[i+2].type=='b')) {
        ischecked[i]=true;
        ischecked[i+1]=true;
        ischecked[i+2]=true;
        el[i].goes=4;
        el[i+1].goes=11;
        el[i+2].goes=8;
      }
    }
    if ((el[i].y<scr_height-size*2)&&(!ischecked[i])&&(el[i].type=='b')) {
      if ((!ischecked[i+40])&&(!ischecked[i+80])&&(el[i].colony==el[i+40].colony)&&(el[i].colony==el[i+80].colony)&&(el[i+40].type=='b')&&(el[i+80].type=='b')) {
        ischecked[i]=true;
        ischecked[i+40]=true;
        ischecked[i+80]=true;
        el[i].goes=6;
        el[i+40].goes=11;
        el[i+80].goes=2;
      }
    }
  }
}
void bacteryCreation(GoL[] el) {       //появлений бактерий
  if ((el[2].type=='b')&&(el[41].type=='b')&&(el[42].type=='b')&&(el[2].colony==el[41].colony)&&(el[2].colony==el[42].colony)&&((el[1].type=='e')||(el[1].type=='p'))&&(el[1].goes==0)) {
    el[1].colony=el[2].colony;
    el[1].goes=10;
  }
  if ((el[39].type=='b')&&(el[80].type=='b')&&(el[79].type=='b')&&(el[39].colony==el[80].colony)&&(el[39].colony==el[79].colony)&&((el[40].type=='e')||(el[40].type=='p'))&&(el[40].goes==0)) {
    el[40].colony=el[39].colony;
    el[40].goes=10;
  }
  if ((el[1121].type=='b')&&(el[1122].type=='b')&&(el[1162].type=='b')&&(el[1121].colony==el[1122].colony)&&(el[1121].colony==el[1162].colony)&&((el[1161].type=='e')||(el[1161].type=='p'))&&(el[1161].goes==0)) {
    el[1161].colony=el[1162].colony;
    el[1161].goes=10;
  }
  if ((el[1159].type=='b')&&(el[1160].type=='b')&&(el[1199].type=='b')&&(el[1159].colony==el[1160].colony)&&(el[1159].colony==el[1199].colony)&&((el[1200].type=='e')||(el[1200].type=='p'))&&(el[1200].goes==0)) {
    el[1200].colony=el[1199].colony;
    el[1200].goes=10;
  }
  for (int i=1; i<el.length; i++) {
    if ((i!=1)&&(i!=40)&&(i!=1161)&&(i!=1200)&&((el[i].type=='e')||(el[i].type=='p'))&&(el[i].goes==0)) {
      int f=0;
      int s=0;
      int p=0;
      if ((el[i].x!=size/2)&&(el[i].y!=size/2)&&(el[i].x!=scr_width-size/2)&&(el[i].y!=scr_height-size/2)) {       //внутренняя часть
      }
      if (el[i].x!=size/2) {       //левая граница
      }
      if (el[i].y!=size/2) {       //верхняя граница
      }
      if (el[i].x!=scr_width-size/2) {       //правая граница
      }
      if (el[i].y!=scr_height-size/2) {       //нижняя граница
      }
    }
  }
}
void bacteryDying() {       //исчезновение бактерий
}
void protoCreation() {       //появление протоплазмы
}
void move() {
}
void bacteryCreationChecker(GoL[] el, int border) {
}
int intelligence(GoL[] el) {       //ии для организма
  int go=0;
  return go;
}