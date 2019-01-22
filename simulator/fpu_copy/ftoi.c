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
  
   d = (e > 127 && e < 159) ? 158 - e : 0; // ずらす桁
   i = ((1<<31)|(m<<8)) >> d;
   round = (rm == 0 || s == 0) ? i : i - 1; // rm == 0 で0丸め(端数無視)、 rm == 1 で最近接丸め(絶対値四捨五入)
//   round = (rm == 0 || i[0] == 0) ? i[31:0] : (i[31:0]) + 1; // rm == 0 で0丸め(端数無視)、 rm == 1 で最近接丸め(絶対値四捨五入)
   ir = (s == 0) ? round : (~round) + 1; // bit反転(補数)
  
   y = (e < 127) ? 0 : //指数部が0以下
             ((e > 159) ? 0xffffffff : //inf
             (s<<31)|ir // その他
             );
return y;


}
