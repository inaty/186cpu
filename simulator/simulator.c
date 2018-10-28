#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
#include<math.h>
#define SIZE 8096
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

//入力が２進数の時 -b をつける　
//ファイルの名前をつけたいときは-f [ファイル名]
int main(int argc , char* argv[]){
    FILE *fp;
    char cmd[34];
    unsigned int command[1000];
    char fname[80];
    int flag=0;
    int i = 0;
    int opt;
		int opecode,imm,rs2,rs1,rd,funct3,tmp;
		unsigned int mem[SIZE];
		unsigned int rg[32]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
		float frg[32]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    opterr = 0;
	//initial memory
	for(int i=0;i<SIZE;i++){
		mem[i]=i;
	}
    strcpy(fname,"test.txt");
    while ((opt = getopt(argc,argv ,"bdf:")) !=-1){
        switch (opt){
            case 'b':
                flag++;
                break;
						case 'd':
								flag=flag+4;
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
    //printf("fname=%s",fname);
    fp=fopen(fname,"r");
    if(fp==NULL){
        printf("ファイルが開けないよ\n");
        return -1;
    }
    while(fgets(cmd,34,fp)!=NULL) {
        if ((flag&1)==1){
        cmd[32]='\0';
    command[i]=num(cmd);
    i++;
      }else{
        cmd[8]='\0';
    command[i]=num16(cmd);
    i++;
      }
    }



    int pc=0;//プログラム開始
    while (command[pc]!=0){
				rg[0]=0;//ゼロレジスタ初期化
        //printf("cmmand[%d] is %d,bitcode below\n%s\n",pc,command[pc],int2bin(command[pc]));
				if ((flag&4)==4){
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
				opecode = command[pc] & 0b1111111;
				funct3 = (command[pc] >>12) & 0b111;
//IO関係
	if(opecode==0b0001011){
		rs1=(command[pc]>>15)&0x1f;
		rs2=(command[pc]>>7)&0x1f;
		if((command[pc]&(1<<12))==0){
			//入力mode
			rg[rs2]=getchar();
			if((command[pc]&(1<<14))==0){
				//最上bit埋め
				rg[rs2]-=(2*(rg[rs2]&(1<<7)));
			}
		}else{
			//出力mode
			char c = (char)rg[rs1];
			printf("%c",c);
		}
		pc++;
	}
// lui
	else if (opecode==0b0110111){
		imm=command[pc]&(0xfffff<<12);
		rd = (command[pc]>>7)&0b11111;
		rg[rd]=imm;
		if ((flag&4)==4)
			printf("pc[%d],lui\n",pc);
		pc++;
	}
//auipc
	else if (opecode==0b0010111){
		imm=command[pc]&(0xfffff<<12);
		rd = (command[pc]>>7)&0b11111;
		rg[rd]=imm/4+pc;
		if ((flag&4)==4)
			printf("pc[%d],auipc\n",pc);
	}
//jal
	 else if (opecode==0b1101111){
		imm = -((command[pc]&(1<<31))>>11)+(((command[pc]&(0x3ff<<21))>>20)|(command[pc]&(0xff<<12))|((command[pc]&(1<<20))>>9));//|(command[pc]&(1<<31));
		imm = imm/4;
		rd = (command[pc]>>7)&0b11111;
		rg[rd]=pc+1;
		if ((flag&4)==4)
			printf("pc[%d],jal:pc<-%d\n",pc,pc+imm);
		//printf("imm=%d,%s\n",imm,int2bin(imm));
		pc += imm;
	 }
//jalr命令
	else if ((opecode==0b1100111)&&(funct3==0b000)){
		imm = (command[pc]>>20)&0xfff;
		imm = imm/4;
		rs1 = (command[pc]>>15) & 0b11111;
		rd = (command[pc]>>7) & 0b11111;
		rg[rd]=pc+1;
		if ((flag&4)==4)
		printf("pc[%d],jalr:pc<-%d\n",pc,pc+imm+rg[rs1]/4);
		pc=pc+imm+rg[rs1]/4;
	}

//branch系命令
	else if (opecode==0b1100011){
		imm=-((command[pc]&(1<<31))>>19)+(((command[pc]&(0x3f<<25))>>20)|((command[pc]&(0xf<<8))>>7)|((command[pc]&(0x1<<7))<<4));//|(command[pc]&(1<<31));
		rs1 = (command[pc]&(0x1f<<15))>>15;
		rs2 = (command[pc]&(0x1f<<20))>>20;
		imm=imm/4;
		//printf("imm=%d,%s\n",imm,int2bin(imm));
		//beq
		if (funct3 == 0b000){
		if ((flag&4)==4)
			printf("pc[%d],beq\n",pc);
			if (rg[rs1] ==rg[rs2]){
					pc +=imm;
			}else{
				pc++;
			}
		}
		//bne
		if (funct3 == 0b001) {
		if ((flag&4)==4)
			printf("pc[%d],bne\n",pc);
			if (rg[rs1] !=rg[rs2]){
					pc +=imm;
			}else{
				pc++;
			}
		}
		//blt
		if (funct3 == 0b100) {
		if ((flag&4)==4)
			printf("pc[%d],blt\n",pc);
			if (rg[rs1] < rg[rs2]){
					pc +=imm;
			}else{
				pc++;
			}
		}
		//bge
		if (funct3 == 0b101) {
		if ((flag&4)==4)
			printf("pc[%d],bge\n",pc);
			if (rg[rs1] >= rg[rs2]){
					pc +=imm;
			}else{
				pc++;
			}
		}
		//bltu
		if (funct3 == 0b110) {
		if ((flag&4)==4)
			printf("pc[%d],bltu\n",pc);
			if (rg[rs1] < rg[rs2]){
					pc +=imm;
			}else{
				pc++;
			}
		}
		//bgtu
		if (funct3 == 0b111) {
		if ((flag&4)==4)
			printf("pc[%d],bgtu\n",pc);
			if (rg[rs1] >= rg[rs2]){
					pc +=imm;
			}else{
				pc++;
			}
		}
	}

//load系命令
	else if (opecode==0b0000011){
			imm = command[pc]>>20;
			rs1 = (command[pc]>>15) & 0b11111;
			rd = (command[pc]>>7) & 0b11111;
		//lb
		if(funct3==0b000){
		if ((flag&4)==4)
			printf("pc[%d],lb\n",pc);
			rg[rd]=(mem[imm+rs1]&0x7f)-(mem[imm+rs1]&0x80);
		}
		//lh
		if(funct3==0b001){
		if ((flag&4)==4)
			printf("pc[%d],lh\n",pc);
			rg[rd]=(mem[imm+rs1]&0x7fff)-(mem[imm+rs1]&0x8000);
		}
		//lw
		if(funct3==0b010){
		if ((flag&4)==4)
			printf("pc[%d],lw\n",pc);
			rg[rd]=mem[imm+rs1];
		}
		//lbu
		if(funct3==0b100){
		if ((flag&4)==4)
			printf("pc[%d],lbu\n",pc);
			rg[rd]=mem[imm+rs1]&0xff;
		}
		//lhu
		if(funct3==0b101){
		if ((flag&4)==4)
			printf("pc[%d],lhu\n",pc);
			rg[rd]=mem[imm+rs1]&0xffff;
		}
		pc++;

}
//STORE系命令
	else if (opecode==0b0100011){
			imm = ((command[pc]&(0x7f<<25))>>20) | ((command[pc]&(0x1f<<7))>>7);
			rs1 = (command[pc]>>15) & 0b11111;
			rs2=  (command[pc]>>20) & 0b11111;
		//sb
		if(funct3==0b000){
		if ((flag&4)==4)
			printf("pc[%d],sb\n",pc);
			mem[imm+rs1]=rg[rs2];
		}
		//sh
		if(funct3==0b001){
		if ((flag&4)==4)
			printf("pc[%d],sh\n",pc);
			mem[imm+rs1]=rg[rs2]&0xffff;
		}
		//sw
		if(funct3==0b010){
		if ((flag&4)==4)
			printf("pc[%d],sw\n",pc);
			mem[imm+rs1]=rg[rs2]&0xff;
		}
		pc++;
}
//OP-IMM系命令
	else if (opecode==0b0010011){
			imm = command[pc]>>20;
			imm =imm- 2*(imm & (1<<11));
			rs1 = (command[pc]>>15) & 0b11111;
			rd = (command[pc]>>7) & 0b11111;
		//addi
		if(funct3==0b000){
		if ((flag&4)==4)
			printf("pc[%d],addi\n",pc);
			rg[rd]=rg[rs1]+imm;
		}
		//slti
		if(funct3==0b010){
		if ((flag&4)==4)
			printf("pc[%d],slti\n",pc);
			rg[rd]=(rg[rs1]<imm) ? 1:0;
		}
		//sltiu
		if(funct3==0b011){
		if ((flag&4)==4)
			printf("pc[%d],sltiu\n",pc);
			rg[rd]=(rg[rs1]<imm) ? 1:0;
		}
		//xori
		if(funct3==0b100){
		if ((flag&4)==4)
			printf("pc[%d],xori\n",pc);
			rg[rd]=rg[rs1]^imm;
		}
		//ori
		if(funct3==0b110){
		if ((flag&4)==4)
			printf("pc[%d],ori\n",pc);
			rg[rd]=rg[rs1]|imm;
		}
		//andi
		if(funct3==0b110){
		if ((flag&4)==4)
			printf("pc[%d],andi\n",pc);
			rg[rd]=rg[rs1] & imm;
		}
		pc++;
}

//OP系命令
	else if (opecode==0b0110011){
			imm = command[pc]>>25;
			rs2 = (command[pc]>>20) & 0b11111;
			rs1 = (command[pc]>>15) & 0b11111;
			rd = (command[pc]>>7) & 0b11111;
		//add
		if((funct3==0b000)&&(imm!=0b0100000)){
		if ((flag&4)==4)
			printf("pc[%d],add\n",pc);
			rg[rd]=rg[rs1]+rg[rs2];
		}
		//sub
		if((funct3==0b000)&&(imm==0b0100000)){
		if ((flag&4)==4)
			printf("pc[%d],sub\n",pc);
			rg[rd]=rg[rs1]-rg[rs2];
		}
		//mul
		if((funct3==0b000)&&(imm==0b0110011)){
		if ((flag&4)==4)
			printf("pc[%d],mul\n",pc);
			rg[rd]=rg[rs1]*rg[rs2];
		}
		//div
		if((funct3==0b100)&&(imm==0b0110011)){
		if ((flag&4)==4)
			printf("pc[%d],div\n",pc);
			rg[rd]=rg[rs1]/rg[rs2];
		}
		//sll
		if(funct3==0b001){
		if ((flag&4)==4)
			printf("pc[%d],sll\n",pc);
			rg[rd]=rg[rs1]<<rg[rs2];
		}
		//slt
		if(funct3==0b010){
		if ((flag&4)==4)
			printf("pc[%d],slt\n",pc);
			rg[rd]=(rg[rs1] < rg[rs2]) ? 1:0;
		}
		//sltu
		if(funct3==0b011){
		if ((flag&4)==4)
			printf("pc[%d],sltu\n",pc);
			rg[rd]=(rg[rs1] < rg[rs2]) ? 1:0;
		}
		//xor
		if(funct3==0b100){
		if ((flag&4)==4)
			printf("pc[%d],xor\n",pc);
			rg[rd]=rg[rs1] ^ rg[rs2];
		}
		//sll
		if((funct3==0b001)&&(imm==0b0100000)){
		if ((flag&4)==4)
			printf("pc[%d],sll\n",pc);
			rg[rd]=rg[rs1]>>rg[rs2];
		}
		//sra
		if((funct3==0b001)&&(imm==0b0100000)){
		if ((flag&4)==4)
			printf("pc[%d],sra\n",pc);
			tmp=rg[rs1];
			rg[rd]=tmp>>rg[rs2];
		}
		//or
		if(funct3==0b110){
		if ((flag&4)==4)
			printf("pc[%d],or\n",pc);
			rg[rd]=rg[rs1] | rg[rs2];
		}
		//and
		if(funct3==0b111){
		if ((flag&4)==4)
			printf("pc[%d],and\n",pc);
			rg[rd]=rg[rs1] & rg[rs2];
		}
		pc++;
	}
	//flw
	else if ((opecode==0b0000111)&&(funct3==0b010)){
			imm = command[pc]>>20;
			rd = (command[pc]>>7) & 0b11111;
			rs1 = (command[pc]>>15) & 0b11111;
		if ((flag&4)==4)
			printf("pc[%d],flw\n",pc);
			rg[rd]=(float)mem[imm+rs1];
			pc++;
			}
	//fsw
	else if ((opecode==0b0100111)&&(funct3==0b010)){
			rs1 = (command[pc]>>15) & 0b11111;
		if ((flag&4)==4)
			printf("pc[%d],fsw\n",pc);
			mem[imm+rs1]=(unsigned int)(rg[rs2]&0xff);
			pc++;
	}
	//float 演算
	else if (opecode==0b1010011){
			imm = command[pc]>>25;
			rs2 = (command[pc]>>20) & 0b11111;
			rs1 = (command[pc]>>15) & 0b11111;
			rd = (command[pc]>>7) & 0b11111;

		//fadd.s
		if(imm==0){
		if ((flag&4)==4)
			printf("pc[%d],fadd.s\n",pc);
			frg[rd]=frg[rs1]+frg[rs2];
		}
		//fsub.s
		if(imm==4){
		if ((flag&4)==4)
			printf("pc[%d],fsub.s\n",pc);
			frg[rd]=frg[rs1]-frg[rs2];
		}
		//fmul.s
		if(imm==8){
		if ((flag&4)==4)
			printf("pc[%d],fmul.s\n",pc);
			frg[rd]=frg[rs1]*frg[rs2];
		}
		//fdiv.s
		if(imm==12){
		if ((flag&4)==4)
			printf("pc[%d],fdiv.s\n",pc);
			frg[rd]=frg[rs1]/frg[rs2];
		}
		//fsqrt.s
		if((imm==0b0101100)&&(rs2==0)){
		if ((flag&4)==4)
			printf("pc[%d],fsqrt.s\n",pc);
			frg[rd]=sqrt(frg[rs1]);
		}
		//fsgnj.s
		if((imm==0b00100000)&&(funct3==0)){
		if ((flag&4)==4)
			printf("pc[%d],fsgnj.s\n",pc);
			frg[rd]=(float)(((unsigned int)frg[rs1])&0x7fffffff+((unsigned int)frg[rs2])&0x80000000);
		}
		//fsgnjn.s
		if((imm==0b00100000)&&(funct3==1)){
		if ((flag&4)==4)
			printf("pc[%d],fsgnjn.s\n",pc);
			frg[rd]=(float)((unsigned int)frg[rs1]&0x7fffffff+(0x80000000^((unsigned int)frg[rs2]&0x80000000)));
		}
		//fsgnjx.s
		if((imm==0b00100000)&&(funct3==2)){
		if ((flag&4)==4)
			printf("pc[%d],fsgnjx.s\n",pc);
			frg[rd]=(float)((unsigned int)frg[rs1]&0x7fffffff+(((unsigned int)frg[rs1]&0x80000000)^((unsigned int)frg[rs2]&0x80000000)));
		
		}
		//fcvt.w.s
		if((imm==0b1100000)&&(rs2==0)){
		if ((flag&4)==4)
			printf("pc[%d],fcvt.w.s\n",pc);
			frg[rd]=1/frg[rs1];
		}
		//feq.d
		if((imm==0b1010001)&&(funct3==2)){
		if ((flag&4)==4)
			printf("pc[%d],feq.s\n",pc);
			rg[rd]=(frg[rs1]==frg[rs2])?1:0;
		}
		//flt.d
		if((imm==0b1010001)&&(funct3==1)){
		if ((flag&4)==4)
			printf("pc[%d],flt.s\n",pc);
			rg[rd]=(frg[rs1]<frg[rs2])?1:0;
		}
		//fle.d
		if((imm==0b1010001)&&(funct3==0)){
		if ((flag&4)==4)
			printf("pc[%d],fle.s\n",pc);
			rg[rd]=(frg[rs1]<=frg[rs2])?1:0;
		}
		//fcvt.s.w
		if((imm==0b1101000)&&(rs2==0)){
		if ((flag&4)==4)
			printf("pc[%d],fcvt.s.w\n",pc);
			frg[rd]=1/frg[rs1];
		}
		//fmv.w.x
		if((imm==0b1111000)&&(funct3==0)&&(rs2==0)){
		if ((flag&4)==4)
			printf("pc[%d],fmv.w.x\n",pc);
			frg[rd]=(float)rg[rs1];
		}
		//fcos.s
		if((imm==0b1100001)&&(rs2==0)){
		if ((flag&4)==4)
			printf("pc[%d],fcos.s\n",pc);
			frg[rd]=cosf(frg[rs1]);
		}
		//fsin.s
		if((imm==0b1100001)&&(rs2==1)){
		if ((flag&4)==4)
			printf("pc[%d],fsin.s\n",pc);
			frg[rd]=sinf(frg[rs1]);
		}
		//fatan.s
		if((imm==0b1101001)&&(rs2==0)){
		if ((flag&4)==4)
			printf("pc[%d],fatan.s\n",pc);
			frg[rd]=atanf(frg[rs1]);
		}





	pc++;
	}
	//PSEUDO
	//else if (
	//例外処理
	else {
		printf("command[%d]に命令セットにないcodeが含まれているよ!\n",pc);
		printf("確認用\n16進->%s\n2進->%s\n",int16bin(command[pc]),int2bin(command[pc]));
		return -1;
	}





    }
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
  return 0;
}
