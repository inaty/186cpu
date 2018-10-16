#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
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
    opterr = 0;
	//initial memory
	for(int i=0;i<SIZE;i++){
		mem[i]=i;
	}
    strcpy(fname,"test.txt");
    while ((opt = getopt(argc,argv ,"bf:")) !=-1){
        switch (opt){
            case 'b':
                flag++;
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
        //printf("cmmand[%d] is %d,bitcode below\n%s\n",pc,command[pc],int2bin(command[pc]));
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
		pc++;
	}
//auipc
	else if (opecode==0b0010111){
		imm=command[pc]&(0xfffff<<12);
		rd = (command[pc]>>7)&0b11111;
		rg[rd]=imm/4+pc;
	}
//jal
	 else if (opecode==0b1101111){
		imm = -((command[pc]&(1<<31))>>11)+(((command[pc]&(0x3ff<<21))>>20)|(command[pc]&(0xff<<12))|((command[pc]&(1<<20))>>9));//|(command[pc]&(1<<31));
		imm = imm/4;
		rd = (command[pc]>>7)&0b11111;
		rg[rd]=pc+1;
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
		pc=pc+imm+rs1/4;
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
			if (rg[rs1] ==rg[rs2]){
					pc +=imm;
			}else{
				pc++;
			}
		}
		//bne
		if (funct3 == 0b001) {
			if (rg[rs1] !=rg[rs2]){
					pc +=imm;
			}else{
				pc++;
			}
		}
		//blt
		if (funct3 == 0b100) {
			if (rg[rs1] < rg[rs2]){
					pc +=imm;
			}else{
				pc++;
			}
		}
		//bge
		if (funct3 == 0b101) {
			if (rg[rs1] >= rg[rs2]){
					pc +=imm;
			}else{
				pc++;
			}
		}
		//bltu
		if (funct3 == 0b110) {
			if (rg[rs1] < rg[rs2]){
					pc +=imm;
			}else{
				pc++;
			}
		}
		//bgtu
		if (funct3 == 0b111) {
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
			rg[rd]=(mem[imm+rs1]&0x7f)-(mem[imm+rs1]&0x80);
		}
		//lh
		if(funct3==0b001){
			rg[rd]=(mem[imm+rs1]&0x7fff)-(mem[imm+rs1]&0x8000);
		}
		//lw
		if(funct3==0b010){
			rg[rd]=mem[imm+rs1];
		}
		//lbu
		if(funct3==0b100){
			rg[rd]=mem[imm+rs1]&0xff;
		}
		//lhu
		if(funct3==0b101){
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
			mem[imm+rs1]=rg[rs2];
		}
		//sh
		if(funct3==0b001){
			mem[imm+rs1]=rg[rs2]&0xffff;
		}
		//sw
		if(funct3==0b010){
			mem[imm+rs1]=rg[rs2]&0xff;
		}
		pc++;
}
//OP-IMM系命令
	else if (opecode==0b0010011){
			imm = command[pc]>>20;
			rs1 = (command[pc]>>15) & 0b11111;
			rd = (command[pc]>>7) & 0b11111;
		//addi
		if(funct3==0b000){
			rg[rd]=rg[rs1]+imm;
		}
		//slti
		if(funct3==0b010){
			rg[rd]=(rg[rs1]<imm) ? 1:0;
		}
		//sltiu
		if(funct3==0b011){
			rg[rd]=(rg[rs1]<imm) ? 1:0;
		}
		//xori
		if(funct3==0b100){
			rg[rd]=rg[rs1]^imm;
		}
		//ori
		if(funct3==0b110){
			rg[rd]=rg[rs1]|imm;
		}
		//andi
		if(funct3==0b110){
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
			rg[rd]=rg[rs1]+rg[rs2];
		}
		//sub
		if((funct3==0b000)&&(imm==0b0100000)){
			rg[rd]=rg[rs1]-rg[rs2];
		}
		//sll
		if(funct3==0b001){
			rg[rd]=rg[rs1]<<rg[rs2];
		}
		//slt
		if(funct3==0b010){
			rg[rd]=(rg[rs1] < rg[rs2]) ? 1:0;
		}
		//sltu
		if(funct3==0b011){
			rg[rd]=(rg[rs1] < rg[rs2]) ? 1:0;
		}
		//xor
		if(funct3==0b100){
			rg[rd]=rg[rs1] ^ rg[rs2];
		}
		//sll
		if((funct3==0b001)&&(imm==0b0100000)){
			rg[rd]=rg[rs1]>>rg[rs2];
		}
		//sra
		if((funct3==0b001)&&(imm==0b0100000)){
			tmp=rg[rs1];
			rg[rd]=tmp>>rg[rs2];
		}
		//or
		if(funct3==0b110){
			rg[rd]=rg[rs1] | rg[rs2];
		}
		//and
		if(funct3==0b111){
			rg[rd]=rg[rs1] & rg[rs2];
		}
		pc++;
	}
	//例外処理
	else {
		printf("command[%d]に命令セットにないcodeが含まれているよ!\n",pc);
		printf("確認用\n16進->%s\n2進->%s\n",int16bin(command[pc]),int2bin(command[pc]));
		return -1;
	}





    }
		printf("\nsuccess!\n");
				for (int j=0;j<8;j++)
					printf("rg[%d]=%d",j,rg[j]);
					printf("\n");
  return 0;
}