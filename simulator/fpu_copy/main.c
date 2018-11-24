#include<stdio.h>//printf
#include"fadd.h"
int main(){
	float fa=3.5,fb=3.55,fc;
	unsigned int a,b,c;
	a=*(unsigned int*)(&fa);
	b=*(unsigned int*)(&fb);
	printf("10987654321098765432109876543210\n");
	printf("a=");
	print(a);
	printf("b=");
	print(b);
	c=fadd (a,b);
	printf("c=");
	print(c);
	fc=*(float*)(&c);
	printf("%.6f\n",fc);
	return 0;
}
