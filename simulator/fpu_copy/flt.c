#include "fadd.h"
#include<stdio.h>
unsigned int flt(unsigned int x1,unsigned int x2){
  unsigned int v;

  unsigned int s1;
  unsigned int e1;
  unsigned int m1;
  unsigned int s2;
  unsigned int e2;
  unsigned int m2;

   s1 = get(x1,31,31);
   e1 = get(x1,30,23);
   m1 = get(x1,22,0);
   s2 = get(x2,31,31);
   e2 = get(x2,30,23);
   m2 = get(x2,22,0);

  unsigned int  m1a;
  unsigned int  m2a;

   m1a = (e1 == 0) ? get(m1,22,0) : (1<<23)|get(m1,22,0);
   m2a = (e2 == 0) ? get(m2,22,0) : (1<<23)|get(m2,22,0);

  unsigned int  e1a;
  unsigned int  e2a;

   e1a = (e1 == 0) ? 1 : get(e1,7,0);
   e2a = (e2 == 0) ? 1 : get(e2,7,0);

  unsigned int  sel;
  unsigned int  ce;

   sel = (e1a < e2a) ? 0 : ((e1a > e2a) ? 1 : 2);
   ce = (m1a < m2a) ? 0 : ((m1a > m2a) ? 1 : 2);

   v = (s1 == s2) ? ((s1 == 0) ? ((sel == 0 || (sel == 2 && ce != 1) ? 1 : 0 )) :
            ((sel == 1 || (sel == 2 && ce != 0)) ? 1 : 0 ))
             : ((s1 == 0 && (((e1<<23)|m1) != 0 || ((e2<<23)|m2) != 0)) ? 0 : 1 );

return v;
}

