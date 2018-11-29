#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
#include<math.h>
#include"exec.h"
#include"bin.h"
#define SIZE (2400 * 1024 / 4)
#define INPUT 1000000000//10億
#define KIZAMI 1024

//入力が２進数の時 -b をつける　
//ファイルの名前をつけたいときは-f [ファイル名]
char* odrlst[58]=
{"in","out","lui","auipc","jal","jalr","beq","bne","blt","bge",
"bltu","bgeu","lb","lh","lw","lbu","lhu","sb","sh","sw",
"addi","slti","sltiu","xori","ori","andi","slli","srli","add","sub",
"mul","div","sll","sltu","xor","srl","or","and","flw","fsw",
"fadd.s","fsub.s","fmul.s","fdiv.s","fsqrt.s","fsgnj.s","fsgnjn.s","fsgnjx.s","fcvt.w.s","feq.d",
"flt.d","fle.d","fcvt.s.w","fmv.w.x","fcos.s","fsin.s","fatan.s","print float"};

int* make_rank(long long int* u,int size){
	int * rank;
	int k;
	rank=(int*)malloc(sizeof(int)*size);
	for (int i=0;i<size;i++){
		rank[i]=size;
	}

	for (int i=0;i<size;i++){
		k=0;
		while(rank[k]!=size){
			if (u[rank[k]] < u[i]){
				break;
			}
			k++;
		}
		for (int j=k;j<size-1;j++){
			rank[k-j+size-1]=rank[k-j+size-2];
		}
		rank[k]=i;
	}
	return rank;
}



int main(int argc , char* argv[]){
		FILE *fp,*fpi,*fpo;
		char cmd[34];
		unsigned int *command;
		unsigned int *counter;
		char fname[80];
		char foname[80];
		char finame[80];
		int flag=0;
		int i = 0;
		long long int jc=0;
		int opt,length=0;
		unsigned int *mem;
		long long int *mmap;
		long long int cntodr[100] = {0};
		unsigned int rg[32]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
		float frg[32]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    opterr = 0;
		command=(unsigned int*)malloc((sizeof (unsigned int))*INPUT);
		counter=(unsigned int*)malloc((sizeof (unsigned int))*INPUT);
		mem=(unsigned int*)calloc(SIZE,(sizeof (unsigned int)));
		mmap=(long long int*)calloc(SIZE/KIZAMI,(sizeof (long long int)));
	for(int i=0;i<1000;i++){
		counter[i]=0;
	}
		strcpy(fname,"test.txt");
		while ((opt = getopt(argc,argv ,"bdpi:o:f:")) !=-1){
			switch (opt){
						case 'b':
								flag++;
								break;
						case 'd':
								flag=flag+4;
								break;
						case 'p':
								flag=flag+8;
								break;
						case 'i':
								flag=flag+32;
								strcpy(finame,optarg);
								break;
						case 'o':
								flag=flag+16;
								strcpy(foname,optarg);
								break;
						case 'f':
								flag=flag+2;
								strcpy(fname,optarg);
								break;
						default:
								printf("指定されたオプションを使ってね！\n");
								break;
						}
		}
		if ((flag&2)==0){
				strcpy(fname,"test.txt");
			}
		if ((flag&16)==0){
				strcpy(foname,"output.ppm");
			}
		if ((flag&16)==0){
				strcpy(finame,"input.bin");
			}
    //printf("fname=%s",fname);
    fp=fopen(fname,"r");
    if(fp==NULL){
        printf("ファイルが開けないよ\n");
        return -1;
    }
		fpi=fopen(finame,"rb");
    if(fpi==NULL){
        printf("ファイルが開けないよ\n");
        return -1;
    }
		fpo=fopen(foname,"wb+");
		if(fpo==NULL){
				printf("ファイルが開けないよ\n");
				return -1;
		}
    while(fgets(cmd,34,fp)!=NULL) {
			length++;
        if ((flag&1)==1){
        cmd[32]='\0';
    command[i]=num(cmd);
		mem[i]=command[i];
    i++;
      }else{
        cmd[8]='\0';
    command[i]=num16(cmd);
		mem[i]=command[i];
    i++;
      }
    }


    int pc=0;//プログラム開始
    long long int cnt = 0;
    while (command[pc]!=0){
			++cnt;
			counter[pc]++;
			exec(rg,frg,flag,command,mem,&pc,fpi,fpo,&jc,mmap,cntodr);
    }
		fclose(fpi);
		fclose(fpo);
		if ((flag&4)==4){
		printf("\nsuccess!\n");
				for (int j=0;j<32;j++){
					if (rg[j]!=0)
					printf("rg[%d]=%d",j,rg[j]);
				}
					printf("\n");
				for (int j=0;j<32;j++){
					if (frg[j]!=0)
					printf("frg[%d]=%.3f",j,frg[j]);
				}
					printf("\n");
				}
				/*for (int j=0;j<32;j++){
					if (mem[j]!=0)
					printf("mem[%d]=%u",j,mem[j]);
				}
				*/

		if ((flag&8)==8){
			printf("jumpcounter=%lld\n",jc);
				for (int i = 0; i < SIZE/KIZAMI; i++) {
					if (mmap[i] != 0) {
						printf("memory map %d*%d*4B -> %lld\n", i, KIZAMI, mmap[i]);
					}
				}
		}
		fprintf(stderr, "cnt = %lld\n", cnt);
		int *rank;
		rank=make_rank(cntodr,58);
		for(int i=0;i<58;i++){
		printf("%15s ->%12lld\n",odrlst[rank[i]],cntodr[rank[i]]);
		}

  return 0;
}
