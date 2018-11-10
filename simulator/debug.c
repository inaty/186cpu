#include<stdio.h>
#include"bin.h"
#include<math.h>
#include<string.h>
#include<stdlib.h>
int main(){
	float frg[32];
	unsigned int rg[32]; 
	int rs1=1,rs2=2,rd=3;
	int a,b,c;
	char at[100],bt[100],ct[100];

	frg[rs1]=-5.761;
	frg[rs2]=-8.4;
	rg[rs1]=-4;
	a=*((int*)&frg[rs1]);
	b=*((int*)&frg[rs2]);
	strcpy(at,int2bin(a));
	strcpy(bt,int2bin(b));
	printf("frg[rs1]=%.6f\n%s\nfrg[rs2]=%.6f\n%s\n",frg[rs1],at,frg[rs2],bt);


//処理開始


			frg[rd]=(float)((int)rg[rs1]);




//処理終わり


	c=*((int*)&frg[rd]);
	strcpy(ct,int2bin(c));
	printf("処理\nfrg[rd]=%.6f,%s\n",frg[rd],ct);
	printf("a=%d,b=%d,c=%d\n",a,b,c);
	return 0;
}
