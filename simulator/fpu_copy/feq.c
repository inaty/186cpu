#include"fadd.h"

unsigned int feq(unsigned int x1,unsigned int x2){
  unsigned int v;

  unsigned int e1;
  unsigned int e2;

  e1 = get(x1,30,23);
  e2 = get(x2,30,23);

  v = (x1 == x2 || (e1 == 0 && e2 == 0)) ? 1 : 0; 

return v;
}

