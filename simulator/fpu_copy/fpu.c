#include<stdio.h>
unsigned int get(unsigned int a,int n,int m){
	unsigned int b;
	unsigned int c;
	b=a>>m;
	c=(1<<(n-m+1))-1;
	b&=c;
	return b;
}
unsigned int lget(unsigned long int a,int n,int m){
	unsigned long int b;
	unsigned long int c;
	b=a>>m;
	c=(1<<(n-m+1))-1;
	b&=c;
	return (unsigned int)b;
}
void print(unsigned int a){
	for (int i=0;i<32;i++)
		printf("%d",(a>>(31-i))&1);
	printf("\n");
	return;
}
void lprint(unsigned long int a){
	for(int i=0;i<64;i++)
		printf("%d",(-i+93)%10);
	printf("\n");
	for (int i=0;i<64;i++)
		printf("%lu",(a>>(63-i))&1);
	printf("\n");
	return;
}

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

  unsigned int e1a;
  unsigned int e2a;

   e1a = (e1 == 0) ? 1 : get(e1,7,0);
   e2a = (e2 == 0) ? 1 : get(e2,7,0);

  unsigned int  sel;
  unsigned int  ce;

   sel = (e1a < e2a) ? 0 : ((e1a > e2a) ? 1 : 2);
   ce = (m1a < m2a) ? 0 : ((m1a > m2a) ? 1 : 2);

   v = (s1 == s2) ? ((s1 == 0) ? ((sel == 0 || (sel == 2 && ce == 0) ? 1 : 0 )) :
	 ((sel == 1 || (sel == 2 && ce == 1)) ? 1 : 0 )): 
	 ((s1 == 0 && (((e1<<23)|m1) != 0 || ((e2<<23)|m2) != 0)) ? 0 : 1 );

return v;
}
unsigned int feq(unsigned int x1,unsigned int x2){
  unsigned int v;

  unsigned int e1;
  unsigned int e2;

  e1 = get(x1,30,23);
  e2 = get(x2,30,23);

  v = (x1 == x2 || (e1 == 0 && e2 == 0)) ? 1 : 0; 

return v;
}
unsigned int fmul(unsigned int x1,unsigned int x2){
	unsigned int y;
	unsigned int ovf;
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

   e1a = (e1 == 0) ? 0x01 : get(e1,7,0);
   e2a = (e2 == 0) ? 0x01 : get(e2,7,0);
  
  int  e1b;
  int  e2b;
   e1b = get(e1a,7,0) - 127;
   e2b = get(e2a,7,0) - 127;
//printf("e1a=%d,e1b=%d",e1a,e1b);

  unsigned int  ss;
  int  ea;
  
   ss = s1 ^ s2;
   ea = get(e1b + e2b + 127,9,0);
  
  unsigned long int  myd;
  
   myd =  (unsigned long int)m1a * (unsigned long int)m2a;
  
	//printf("m1a=%u,m2a=%u\n",m1a,m2a);
  unsigned int  se=48;
 for(int i=0;i<48;i++){
	if(lget(myd,47-i,47-i)==1){
		se=i;
		break;
	}
 }
  
  unsigned long int  mb;
  unsigned long int  mbs;
  int  eb;
  int  ebs;
  
   mb = (myd << (se + 1))&0xffffffffffff;//12*4=48bit
   eb = ea - se + 1;
   ebs = -eb + 1;
   mbs = (get(eb,9,9) == 1) ? (mb >> ebs)&0xffffffffffff : mb&0xffffffffffff;
   ovf = (get(eb,9,8) == 1);
   y = (get(eb,9,9) == 1) ? ((eb > -23) ? (ss<<31)|lget(mbs,47,25) : (ss<<31)):
	 ((get(eb,8,8) == 1) ? (ss<<31)|(0xff<<23) : 
	 (ss<<31)|(get(eb,7,0)<<23)|lget(mbs,47,25));

	 return y;
}
unsigned int fle(unsigned int x1,unsigned int x2){
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
	 roundm=(rm == 0||get(s,0,0)== 0) ? (1<<31)|(m<<8) :((1<<31)|(m<<8)-1);
   i = roundm >> d;
   round = ((i<<1)>>1); // rm == 0 で0丸め(端数無視)、 rm == 1 で最近接丸め(絶対値四捨五入)
//   round = (rm == 0 || i[0] == 0) ? i[31:0] : (i[31:0]) + 1; // rm == 0 で0丸め(端数無視)、 rm == 1 で最近接丸め(絶対値四捨五入)
   ir = (s == 0) ? round : ((rm==0) ? (~round) + 1: (~round)); // bit反転(補数)
  
  y = (e < 127) ? ((rm == 0 || get(s,0,0) == 0 ) ? 0 : 0xffffffff) : //指数部が0以下
             ((e >= 158) ? ((s==0) ? 0x7fffffff : 0x80000000) : //inf
             (((ir==0)&&(s==1))?0x00000000:((s<<31)|ir)) // その他
             );
return y;


}

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
