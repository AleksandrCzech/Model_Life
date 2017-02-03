GoL[] element;
int element_size=1201;
int size=20;
void setup() {
  size(800, 600);
  element=new GoL[element_size];
  for (int i=0; i<element_size; i++)
  {
    element[i]=new GoL(i, 0, size, 0, 'e', 'e', false);
  }
  initialize(element, element_size, 'b', 'f');
  initialize(element, element_size, 'b', 's');
  initialize(element, element_size, 'p', 'e');
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