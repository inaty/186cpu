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
unsigned int fadd(unsigned int x1,unsigned int x2){
	unsigned int tmp;
	if(x1>x2){
		tmp=x1;
		x1=x2;
		x2=tmp;
	}
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

  unsigned int m1a;
  unsigned int m2a;

   m1a = (e1 == 0) ? get(m1,22,0) : get(m1|(1<<23),23,0);
   m2a = (e2 == 0) ? get(m2,22,0) : get(m2|(1<<23),23,0);
  unsigned int e1a;
  unsigned int e2a;

   e1a = (e1 == 0) ? 1 : e1&0xff;
   e2a = (e2 == 0) ? 1 : e2&0xff;

  unsigned int e2ai;

   e2ai = get(~e2a,7,0);

  unsigned int te;

   te = get(e1a + e2ai,7,0);

  unsigned int  ce;
  unsigned int  tde;
  unsigned int  tecalc;
  unsigned int  terev;
  unsigned int  de;

   ce = (get(te,8,8) == 1) ? 0 : 1;
   tecalc = get(te + 1,8,0);
   terev = get(~te,8,0);
   tde = (get(te,8,8) == 1) ? (get(tecalc,7,0)) : (get(terev,7,0));
   de = (get(tde,7,5) != 0) ? 0x1f : get(tde,4,0);

  unsigned int  sel;

   sel = (de == 0) ? ( (m1a > m2a) ? 0 : 1 ) : ce;

  unsigned int  ms;
  unsigned int  mi;
  unsigned int  es;
  unsigned int  ei;
  unsigned int  ss;

   ms = (sel == 0) ? m1a : m2a;
   mi = (sel == 0) ? m2a : m1a;
   es = (sel == 0) ? e1a : e2a;
   ei = (sel == 0) ? e2a : e1a;
   ss = (sel == 0) ? s1 : s2;

  unsigned long int  mie;
  unsigned long int  mia;

   mie = (unsigned long int)mi<<31;
   mia = mie >> de;
  unsigned int  tstck;

   tstck = (get(mia,28,0)==0)?0:1;

  unsigned int  mye;

   mye = (s1 == s2) ? get(((ms<<2) + lget(mia,55,29)),26,0) : get((ms<<2) - lget(mia,55,29),26,0);
  unsigned int  esi;
  unsigned int  eyd;
  unsigned int  myd;
  unsigned int  stck;
  unsigned int  ovf1;

   esi = get(es + 1,7,0);
   eyd = (get(mye,26,26) ==1) ? ((esi == 0xff) ? 0xff : esi ) : es;
   myd = (get(mye,26,26) == 1) ? ((esi == 0xff) ?(1<<25) : (mye >> 1) ) : mye;
   stck = (get(mye,26,26) == 1) ? (tstck | get(mye,0,0)) : tstck;
   ovf1 = (get(mye,26,26) == 1) ? ((esi == 0xff) ? 1 : 0 ) : 0;
  unsigned int se=26;

	for (int i=0;i<26;i++){
		if (get(myd,25-i,25-i)==1){
			se=i;
			break;
		}
	}
  int eyf;

   eyf = eyd - se;

  unsigned int  eyr;
  unsigned int  myf;
	unsigned int eyfu = *(unsigned int*)(&eyf);
   eyr = (eyf > 0) ? get(eyfu,7,0) : 0;
   myf = (eyf > 0) ? (myd  << se) : (myd << (get(get(eyd,4,0)-1,4,0)));

  unsigned int myr;

   myr = (( (get(myf,1,1)== 1) && (get(myf,0,0) == 0) && (get(stck,0,0) == 0) && (get(myf,2,2) == 1) ) 
	 ||((get(myf,1,1)== 1) && (get(myf,0,0) == 0) && (s1 == s2) && (get(stck,0,0) == 1) ) 
	 ||((get(myf,1,1)== 1) && (get(myf,0,0) == 1) )) ? get(get(myf,26,2) + 1,24,0) : (get(myf,26,2));
  unsigned int eyri;

   eyri =get( eyr + 1,7,0);

  unsigned int  ey;
  unsigned int  my;
  unsigned int  sy;
  unsigned int  ovf2;

   ey = (get(myr,24,24) == 1) ? eyri : ((get(myr,23,0) == 0) ? 0 : eyr);
   my = (get(myr,24,24) == 1) ? 0 : (((get(myr,23,0) == 0) ? 0 : get(myr,22,0)));
   sy = (ey == 0 && my == 0) ? (s1 & s2) : ss;

   ovf2 = (get(myr,24,24) == 1 && eyri == 0xff)? 1 : 0;

  unsigned int nzm1;
  unsigned int nzm2;

   nzm1 = (get(m1,22,0)==0)?0:1;
   nzm2 = (get(m2,22,0)==0)?0:1;

   ovf = ((ovf1 == 1 || ovf2 == 1 ) && (e1 != 0xff && e2 != 0xff));

/*   y = (e1 == 255 && e2 != 255) ? {s1,8'd255,nzm1,m1[21:0]} :
	     ((e2 == 255 && e1 != 255) ? {s2,8'd255,nzm2,m2[21:0]} :
	     ((e1 == 255 && e2 ==255 && nzm2) ? {s2,8'd255,1'b1,m2[21:0]} :
	     ((e1 == 255 && e2 ==255 && nzm1) ? {s1,8'd255,1'b1,m1[21:0]} :
	     ((e1 == 255 && e2 ==255 && s1 == s2) ? {s1,8'd255,23'b0} :
	     ((e1 == 255 && e2 ==255) ? {1'b1,8'd255,1'b1,22'b0} : {sy,ey,my} ))))); */

   y = (e1 == 0xff) ? ((e2 == 0xff) ? ( (nzm2==1)? (s2<<31)|(0xff<<23)|(1<<22)|get(m2,21,0) : 
	 ((nzm1==1)? (s1<<31)|(0xff<<23)|(1<<22)|get(m1,21,0) : 
	 ((s1==s2)? (s1<<31)|(0xff<<23):
	 (1<<31)|(0xff<<23)|(1<<22) ) ) ): 
	 ((s1<<31)|(0xff<<23)|(nzm1<<22)|get(m1,21,0))) : 
	 ((e2 == 0xff) ? ((s2<<31)|(0xff<<23)|(nzm2<<22)|get(m2,21,0)) : ((sy<<31)|(ey<<23)|get(my,22,0)));

	 //y= ((sy<<31)|(ey<<23)|get(my,22,0));
	 //本気のdebug
if(ovf>=(1<<1)) printf("ovf");
if(s1>=(1<<1)) printf("s1");
if(e1>=(1<<8)) printf("e1");
if(m1>=(1<<23)) printf("m1");
if(s2>=(1<<1)) printf("s2");
if(e2>=(1<<8)) printf("e2");
if(m2>=(1<<23)) printf("m2");
if(m1a>=(1<<25)) printf("m1a");
if(m2a>=(1<<25)) printf("m2a");
if(e1a>=(1<<8)) printf("e1a");
if(e2a>=(1<<8)) printf("e2a");
if(e2ai>=(1<<8)) printf("e2ai");
if(te>=(1<<9)) printf("te");
if(ce>=(1<<1)) printf("ce");
if(tde>=(1<<8)) printf("tde");
if(tecalc>=(1<<9)) printf("tecalc");
if(terev>=(1<<9)) printf("terev");
if(de>=(1<<5)) printf("de");
if(sel>=(1<<1)) printf("sel");
if(ms>=(1<<25)) printf("ms");
if(mi>=(1<<25)) printf("mi");
if(es>=(1<<8)) printf("es");
if(ei>=(1<<8)) printf("ei");
if(ss>=(1<<1)) printf("ss");
if(mie>=((unsigned long int)1<<56)) printf("mie");
if(mia>=((unsigned long int)1<<56)) printf("mia");
if(tstck>=(1<<1)) printf("tstck");
if(mye>=(1<<27)) printf("mye");
if(esi>=(1<<8)) printf("esi");
if(eyd>=(1<<8)) printf("eyd");
if(myd>=(1<<27)) printf("myd");
if(stck>=(1<<1)) printf("stck");
if(ovf1>=(1<<1)) printf("ovf1");
if(se>=(1<<5)) printf("se");
if(eyf>=(1<<9)) printf("eyf");
if(eyr>=(1<<8)) printf("eyr");
if(myf>=(1<<27)) printf("myf");
if(myr>=(1<<25)) printf("myr");
if(eyri>=(1<<8)) printf("eyri");
if(ey>=(1<<8)) printf("ey");
if(my>=(1<<23)) printf("my");
if(sy>=(1<<1)) printf("sy");
if(ovf2>=(1<<1)) printf("ovf2");
if(nzm1>=(1<<1)) printf("nzm1");
if(nzm2>=(1<<1)) printf("nzm2");
printf("\n");



	return y;
}
