#include"fadd.h"
unsigned int itof(unsigned int x){
  unsigned int  y;

  unsigned int abs;
  
   abs = (get(x,31,31) == 0) ? x : (~x)+1 ;
  
  unsigned int  shift=0;
  for(int i=1;i<32;i++){
		if (get(abs,31-i,31-i)==1){
			shift=i;
			break;
		}
	}


                
  unsigned int  rs;
  unsigned int  rx;
  
   rs = 30 - shift; //rs == 31でもしてくれる？？
   rx = (get(abs,30,0)) << shift;
   y = (shift == 0) ? 0 : // x == 0
            ((shift == 31) ? (get(x,31,31)<<31)|(0x7f<<23) : // x == 1 or -1
            (get(x,31,31)<<31)|(1<<30)|(rs<<23)|get(rx,30,8)
            );
return y;
}

