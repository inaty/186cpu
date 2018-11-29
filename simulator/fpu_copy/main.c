#include<stdio.h>//printf
#include"fadd.h"
#include"fmul.h"
int main(){
	float fa=5,fb=6,fc,ft;
	unsigned int a,b,c,t;
	a=*(unsigned int*)(&fa);
	b=*(unsigned int*)(&fb);
	printf("10987654321098765432109876543210\n");
	c=fmul (a,b);
	printf("a=");
	print(a);
	printf("b=");
	print(b);
	printf("c=");
	print(c);
	fc=*(float*)(&c);
	printf("%.6f\n",fc);
	ft=fa*fb;
	t=*(unsigned int*)&ft;
	if(t!=c){
	printf("wrong_answer.true_answer_is_below\nt=");
	print(t);
	printf("%.6lf\n",ft);
	}
	return 0;
}
