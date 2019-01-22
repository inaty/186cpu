#include<stdio.h>//printf
#include"fadd.h"
#include"fmul.h"
#include"fle.h"
#include"feq.h"
#include"flt.h"
#include"ftoi.h"
#include"itof.h"
#define SIZE 100
int main(){
	float fa=10,fb=10.0,fc,ft;
	unsigned int a,b,c,t;
	printf("  10987654321098765432109876543210\n");
	a=*(unsigned int*)(&fa);
	b=*(unsigned int*)(&fb);

	c=itof(a);

	ft=fa*fb;
	t=*(unsigned int*)&ft;
	
	print(c);
	
	if(t!=c){
	printf("a=");
	//print(a);
	printf("%.6f\n",fa);
	printf("b=");
	//print(b);
	printf("%.6f\n",fb);
	printf("c=");
	//print(c);
	fc=*(float*)(&c);
	printf("%.6f\n",fc);
	printf("wrong_answer.true_answer_is_below\nt=");
	print(t);
	printf("%.6lf\n",ft);
	}


	return 0;
}
