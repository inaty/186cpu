#include<stdio.h>
#include<stdlib.h>
int main(){
	int a=0;
	char input;
	FILE *fp;
	fp=fopen("input.bin","rb");
	if (fp==NULL){
		return -1;
	}
	while(fread(&input,sizeof(char),1,fp)==1){
	a=input&0x000000ff;
	printf("input=%02X,a=%d\n",input&0x000000ff,a);
	for (int i=0;i<32;i++){
		printf("%d",((a&(1<<(31-i)))==0)?0:1);
	}
	printf("\n");
	}
	return 0;
}
