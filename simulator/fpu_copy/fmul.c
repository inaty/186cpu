#include<stdio.h>
#include"fadd.h"
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

printf("myd=%lu,se=%d,mb=%lu,eb=%d,ebs=%d,mbs=%lu\n",myd,se,mb,eb,ebs,mbs);
lprint(myd);
lprint(mb);
lprint(mbs);
print(y);
//本気のdebug
if(s1>=(1<<1)) printf("s1");
if(e1>=(1<<8)) printf("e1");
if(m1>=(1<<23)) printf("m1");
if(s2>=(1<<1)) printf("s2");
if(e2>=(1<<8)) printf("e2");
if(m2>=(1<<23)) printf("m2");
if(m1a>=(1<<24)) printf("m1a");
if(m2a>=(1<<24)) printf("m2a");
if(e1a>=(1<<8)) printf("e1a");
if(e2a>=(1<<8)) printf("e2a");
if(e1b>=(1<<9)) printf("e1b");
if(e2b>=(1<<9)) printf("e2b");
if(ss>=(1<<1)) printf("ss");
if(ea>=(1<<10)) printf("ea");
if(myd>=((unsigned long int)1<<48)) printf("myd");
if(se>=(1<<6)) printf("se");
if(mb>=((unsigned long int)1<<48)) printf("myd");
if(mbs>=((unsigned long int)1<<48)) printf("myd");
if(eb>=(1<<10)) printf("eb");
if(ebs>=(1<<10)) printf("ebs");

	 return y;
}

