#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int num (char* a){
    int n = strlen(a);
    int sum=0;
    for(int i = 0;i<n;i++){
        sum=sum*2;
        if(a[i]=='1')
            sum++;
    }
    return sum;
}
int num16 (char*a){
    int n = strlen(a);
    int sum=0;
    int ascii;
    for(int i = 0;i<n;i++){
        sum=sum*16;
        ascii=a[i]-'0';
        if (ascii<10){
            sum=sum+ascii;
        }else if (ascii<23){
            sum=sum+ascii-7;
        }else if (ascii<55){
            sum=sum+ascii-39;
        }
    }
    return sum;
}
char *int2bin(int x){
   int i;
   static char bin[40];
   for(i=31; i>=0; i--){
   bin[31-i]= ((x>>i)&1 )+'0';
   }
   bin[32]=0; // 文字列の最後に\0を挿入
   return bin;
}
char *int16bin(int x){
	int i;
	static char bin[10];
	for(i=7; i>=0; i--){
	bin[7-i] = ((x>>(i*4))&15)+'0';
		if (bin[7-i]>'9'){
			bin[7-i]=bin[7-i]-'0'+'7';
		}
	}
	bin[8]=0;
	return bin;
}
