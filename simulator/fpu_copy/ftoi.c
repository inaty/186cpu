#include"fadd.h"

unsigned int ftoi(unsigned int x,unsigned int rm){
  unsigned int y;

  unsigned int  s;
  unsigned int  e;
  unsigned int  m;

   s = get(x,31,31);
   e = get(x,30,23);
   m = get(x,22,0);
  
  unsigned int d;
  unsigned int i;
  unsigned int round;
  unsigned int ir;
  unsigned int roundm;
  
   d = (e >= 127 && e < 158) ? 158 - e : 0; // ずらす桁
	 roundm=(rm == 0||s[0]== 0) ? (1<<31)|(m<<8) :((1<<31)|(m<<8)-1);
   i = roundm >> d;
   round = ((i<<1)>>1) // rm == 0 で0丸め(端数無視)、 rm == 1 で最近接丸め(絶対値四捨五入)
//   round = (rm == 0 || i[0] == 0) ? i[31:0] : (i[31:0]) + 1; // rm == 0 で0丸め(端数無視)、 rm == 1 で最近接丸め(絶対値四捨五入)
   ir = (s == 0) ? round : ((rm==0) ? (~round) + 1: (~round)); // bit反転(補数)
  
  y = (e < 127) ? ((rm == 0 || s[0] == 0 ) ? 0 : 0xffffffff) : //指数部が0以下
             ((e >= 158) ? ((s==0) ? 0x7fffffff : 0x80000000) : //inf
             ((((|ir)!=1)&&(s==1))?0x00000000:((s<<31)|ir)) // その他
             );
return y;


}
