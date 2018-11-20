#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
#include<math.h>
#include"bin.h"
#define KIZAMI 1000000
void exec(unsigned int* rg,float* frg,int flag,unsigned int *command,unsigned int *mem,int *pc,FILE* fpi,FILE* fpo,long long int* jc,long long int*mmap){
	char input;
	int opecode,imm,rs2,rs1,rd,funct3,tmp;
				rg[0]=0;//ゼロレジスタ初期化
//printf("cmmand[%d] is %d,bitcode below\n%s\n",*pc,command[*pc],int2bin(command[*pc]));
				if ((flag&4)==4){
				for (int j=0;j<32;j++){
					if (rg[j]!=10000000*j+1000000)
					printf("rg[%d]=%d",j,rg[j]);
				}
					printf("\n");
				for (int j=0;j<32;j++){
					if (frg[j]!=0)
					printf("frg[%d]=%.3f",j,frg[j]);
				}
					printf("\n");
				/*for (int j=0;j<32;j++){
					if (mem[j]!=0)
					printf("mem[%d]=%u",j,mem[j]);
				}
				*/
					printf("\n\n");
				}
	opecode = command[*pc] & 0b1111111;
	funct3 = (command[*pc] >>12) & 0b111;
//IO関係
	if(opecode==0b0001011){
		rs1=(command[*pc]>>15)&0x1f;
		rs2=(command[*pc]>>7)&0x1f;

		if ((flag&4)==4)
			printf("*pc[%d],io\n",*pc);

		if((command[*pc]&(1<<12))==0){
			//入力mode
			fread(&input,sizeof(input),1,fpi);
			rg[rs2]=(rg[rs2]&0xffffff00)|(input&0x000000ff);
			if((command[*pc]&(1<<14))==0){
					//最上bit埋め
					//rg[rs2]=rg[rs2]|((0xffffff00)*(rg[rs2]>>7));
				}

				if ((flag&4)==4)
					printf("入力モード,rg[%d]<=%d",rs2,rg[rs2]);
			
		}else{
			//出力mode
			char c=(char)(rg[rs1]&0x000000ff);
			fwrite (&c,sizeof(char),1,fpo);
		}
		*pc=*pc+1;
	}
// lui
	else if (opecode==0b0110111){
		imm=command[*pc]&(0xfffff<<12);
		rd = (command[*pc]>>7)&0b11111;
		rg[rd]=imm;
		if ((flag&4)==4)
			printf("*pc[%d],lui\n",*pc);
		*pc=*pc+1;
	}
//auipc
	else if (opecode==0b0010111){
		imm=command[*pc]&(0xfffff<<12);
		rd = (command[*pc]>>7)&0b11111;
		rg[rd]=imm+4*(*pc);
		if ((flag&4)==4)
			printf("*pc[%d],aui*pc\n",*pc);
	}
//jal
	 else if (opecode==0b1101111){
		imm = -((command[*pc]&(1<<31))>>11)+(((command[*pc]&(0x3ff<<21))>>20)|(command[*pc]&(0xff<<12))|((command[*pc]&(1<<20))>>9));//|(command[*pc]&(1<<31));
		imm = imm/4;
		rd = (command[*pc]>>7)&0b11111;
		rg[rd]=4*(*pc+1);
		if ((flag&4)==4)
			printf("*pc[%d],jal:*pc<-%d\n",*pc,*pc+imm);
		//printf("imm=%d,%s\n",imm,int2bin(imm));
		*pc=*pc + imm;
		*jc=*jc+1;
	 }
//jalr命令
	else if ((opecode==0b1100111)&&(funct3==0b000)){
		imm = (command[*pc]>>20)&0xfff;
		imm = imm - (imm&0x800)*2;
		rs1 = (command[*pc]>>15) & 0b11111;
		rd = (command[*pc]>>7) & 0b11111;
		rg[rd]=4*(*pc+1);
		if ((flag&4)==4)
		printf("*pc[%d],jalr:*pc<-%d,imm=%d,rs1=%d\n",*pc,(imm+rg[rs1])/4,imm,rs1);
		*pc=(imm+(int)rg[rs1])/4;
		*jc=*jc+1;
	}

//branch系命令
	else if (opecode==0b1100011){
		imm=-((command[*pc]&(1<<31))>>19)+(((command[*pc]&(0x3f<<25))>>20)|((command[*pc]&(0xf<<8))>>7)|((command[*pc]&(0x1<<7))<<4));//|(command[*pc]&(1<<31));
		rs1 = (command[*pc]&(0x1f<<15))>>15;
		rs2 = (command[*pc]&(0x1f<<20))>>20;
		imm=imm/4;
		if ((flag&4)==4)
		printf("imm/4=%d,rs1=%d,rs2=%d\n",imm,rs1,rs2);
		//beq
		if (funct3 == 0b000){
		if ((flag&4)==4)
			printf("*pc[%d],beq\n",*pc);
			if ((int)rg[rs1] ==(int)rg[rs2]){
					*pc=*pc+imm;
					*jc=*jc+1;
			}else{
				*pc=*pc+1;
			}
		}
		//bne
		else if (funct3 == 0b001) {
		if ((flag&4)==4)
			printf("*pc[%d],bne,imm/4=%d\n",*pc,imm);
			if ((int)rg[rs1] !=(int)rg[rs2]){
					*pc =*pc+imm;
					*jc =*jc+1;
			}else{
				*pc=*pc+1;
			}
		}
		//blt
		else if (funct3 == 0b100) {
		if ((flag&4)==4)
			printf("*pc[%d],blt\n",*pc);
			if ((int)rg[rs1] < (int)rg[rs2]){
					*pc=*pc+imm;
					*jc =*jc+1;
			}else{
				*pc=*pc+1;
			}
		}
		//bge
		else if (funct3 == 0b101) {
		if ((flag&4)==4)
			printf("*pc[%d],bge\n",*pc);
			if (rg[rs1] >= rg[rs2]){
					*pc =*pc + imm;
					*jc =*jc+1;
			}else{
				*pc=*pc+1;
			}
		}
		//bltu
		else if (funct3 == 0b110) {
		if ((flag&4)==4)
			printf("*pc[%d],bltu\n",*pc);
			if (rg[rs1] < rg[rs2]){
					*pc=*pc+imm;
					*jc =*jc+1;
			}else{
				*pc=*pc+1;
			}
		}
		//bgeu
		else if (funct3 == 0b111) {
		if ((flag&4)==4)
			printf("*pc[%d],bgeu\n",*pc);
			if (rg[rs1] >= rg[rs2]){
					*pc =*pc+imm;
					*jc =*jc+1;
			}else{
				*pc=*pc+1;
			}
		}
		else {
			printf("error\n");
		}
	}

//load系命令
	else if (opecode==0b0000011){
			imm = command[*pc]>>20;
			imm = imm-2*(imm&0x800);
			rs1 = (command[*pc]>>15) & 0b11111;
			rd = (command[*pc]>>7) & 0b11111;
		if ((flag&4)==4)
		printf("imm=%d,rs1=%d,rd=%d\n",imm,rs1,rd);
		//lb
		if(funct3==0b000){
		if ((flag&4)==4)
			printf("*pc[%d],lb\n",*pc);
			rg[rd]=(mem[(imm+(int)rg[rs1])/4]&0x7f)-(mem[(imm+(int)rg[rs1])/4]&0x80);
		}
		//lh
		else if(funct3==0b001){
		if ((flag&4)==4)
			printf("*pc[%d],lh\n",*pc);
			rg[rd]=(mem[(imm+(int)rg[rs1])/4]&0x7fff)-(mem[(imm+(int)rg[rs1])/4]&0x8000);
		}
		//lw
		else if(funct3==0b010){
		if ((flag&4)==4)
			printf("*pc[%d],lw,mem[%d]loaded\n",*pc,(imm+rg[rs1])/4);
			rg[rd]=mem[(imm+(int)rg[rs1])/4];
			mmap[(imm+(int)rg[rs1]/4)/KIZAMI]++;

		}
		//lbu
		else if(funct3==0b100){
		if ((flag&4)==4)
			printf("*pc[%d],lbu\n",*pc);
			rg[rd]=mem[(imm+(int)rg[rs1])/4]&0xff;
		}
		//lhu
		else if(funct3==0b101){
		if ((flag&4)==4)
			printf("*pc[%d],lhu\n",*pc);
			rg[rd]=mem[(imm+(int)rg[rs1])/4]&0xffff;
		}
		else {
			printf("error\n");
		}
		*pc=*pc+1;

}
//STORE系命令
	else if (opecode==0b0100011){
			imm = ((command[*pc]&(0x7f<<25))>>20) | ((command[*pc]&(0x1f<<7))>>7);
			imm = imm - (imm&0x800)*2;
			rs1 = (command[*pc]>>15) & 0b11111;
			rs2=  (command[*pc]>>20) & 0b11111;
		if ((flag&4)==4)
		printf("imm=%d,rs1=%d,rs2=%d\n",imm,rs1,rs2);
		//sb
		if(funct3==0b000){
		if ((flag&4)==4)
			printf("*pc[%d],sb\n",*pc);
			mem[(imm+(int)rg[rs1])/4]=rg[rs2]&0xff;
		}
		//sh
		else if(funct3==0b001){
		if ((flag&4)==4)
			printf("*pc[%d],sh\n",*pc);
			mem[(imm+(int)rg[rs1])/4]=rg[rs2]&0xffff;
		}
		//sw
		else if(funct3==0b010){
		if ((flag&4)==4)
			printf("*pc[%d],sw,mem[%d]changed\n",*pc,(imm+rg[rs1])/4);
			mem[(imm+(int)rg[rs1])/4]=rg[rs2];
			mmap[((imm+(int)rg[rs1])/4)/KIZAMI]++;
		}
		else{
			printf("error\n");
		}
		*pc=*pc+1;
}
//OP-IMM系命令
	else if (opecode==0b0010011){
			imm = command[*pc]>>20;
			imm =imm- 2*(imm &0x800);
			rs1 = (command[*pc]>>15) & 0b11111;
			rd = (command[*pc]>>7) & 0b11111;
		if ((flag&4)==4)
		printf("imm=%d,rs1=%d,rd=%d\n",imm,rs1,rd);
		//addi
		if(funct3==0b000){
		if ((flag&4)==4)
			printf("*pc[%d],addi\n",*pc);
			rg[rd]=(int)rg[rs1]+imm;
		}
		//slti
		else if(funct3==0b010){
		if ((flag&4)==4)
			printf("*pc[%d],slti\n",*pc);
			rg[rd]=((int)rg[rs1]<imm) ? 1:0;
		}
		//sltiu
		else if(funct3==0b011){
		if ((flag&4)==4)
			printf("*pc[%d],sltiu\n",*pc);
			rg[rd]=(rg[rs1]<imm) ? 1:0;
		}
		//xori
		else if(funct3==0b100){
		if ((flag&4)==4)
			printf("*pc[%d],xori\n",*pc);
			rg[rd]=rg[rs1]^imm;
		}
		//ori
		else if(funct3==0b110){
		if ((flag&4)==4)
			printf("*pc[%d],ori\n",*pc);
			rg[rd]=rg[rs1]|imm;
		}
		//andi
		else if(funct3==0b111){
		if ((flag&4)==4)
			printf("*pc[%d],andi\n",*pc);
			rg[rd]=rg[rs1] & imm;
		}
		//slli
		else if(funct3==0b001){
			if((flag&4)==4)
				printf("*pc[%d],slli\n",*pc);
			rg[rd]=rg[rs1]<<(int)(imm&0b11111);
		}
		else{
			printf("error\n");
		}
		*pc=*pc+1;
}

//OP系命令
	else if (opecode==0b0110011){
			imm = command[*pc]>>25;
			rs2 = (command[*pc]>>20) & 0b11111;
			rs1 = (command[*pc]>>15) & 0b11111;
			rd = (command[*pc]>>7) & 0b11111;
		if ((flag&4)==4)
		printf("imm=%d,rs1=%d,rs2=%d,rd=%d\n",imm,rs1,rs2,rd);
		//add
		if((funct3==0b000)&&(imm==0b0000000)){
		if ((flag&4)==4)
			printf("*pc[%d],add\n",*pc);
			rg[rd]=(int)rg[rs1]+(int)rg[rs2];
		}
		//sub
		else if((funct3==0b000)&&(imm==0b0100000)){
		if ((flag&4)==4)
			printf("*pc[%d],sub\n",*pc);
			rg[rd]=(int)rg[rs1]-(int)rg[rs2];
		}
		//mul
		else if((funct3==0b000)&&(imm==0b0000001)){
		if ((flag&4)==4)
			printf("*pc[%d],mul\n",*pc);
			rg[rd]=(int)rg[rs1]*(int)rg[rs2];
		}
		//div
		else if((funct3==0b100)&&(imm==0b0000001)){
		if ((flag&4)==4)
			printf("*pc[%d],div\n",*pc);
			rg[rd]=(int)rg[rs1]/(int)rg[rs2];
		}
		//sll
		else if(funct3==0b001&&imm==0){
		if ((flag&4)==4)
			printf("*pc[%d],sll\n",*pc);
			rg[rd]=rg[rs1]<<(int)rg[rs2];
		}
		//slt
		else if(funct3==0b010&&imm==0){
		if ((flag&4)==4)
			printf("*pc[%d],slt\n",*pc);
			rg[rd]=(rg[rs1] < rg[rs2]) ? 1:0;
		}
		//sltu
		else if(funct3==0b011&imm==0){
		if ((flag&4)==4)
			printf("*pc[%d],sltu\n",*pc);
			rg[rd]=(rg[rs1] < rg[rs2]) ? 1:0;
		}
		//xor
		else if(funct3==0b100&&imm==0){
		if ((flag&4)==4)
			printf("*pc[%d],xor\n",*pc);
			rg[rd]=rg[rs1] ^ rg[rs2];
		}
		//sll
		else if((funct3==0b001)&&(imm==0b0100000)){
		if ((flag&4)==4)
			printf("*pc[%d],sll\n",*pc);
			rg[rd]=rg[rs1]<<(int)rg[rs2];
		}
		//sra
		else if((funct3==0b001)&&(imm==0b0100000)){
		if ((flag&4)==4)
			printf("*pc[%d],sra\n",*pc);
			tmp=rg[rs1];
			rg[rd]=tmp>>(int)rg[rs2];
		}
		//or
		else if(funct3==0b110){
		if ((flag&4)==4)
			printf("*pc[%d],or\n",*pc);
			rg[rd]=rg[rs1] | rg[rs2];
		}
		//and
		else if(funct3==0b111){
		if ((flag&4)==4)
			printf("*pc[%d],and\n",*pc);
			rg[rd]=rg[rs1] & rg[rs2];
		}
		else{
			printf("error\n");
		}
		*pc=*pc+1;
	}
	//flw
	else if ((opecode==0b0000111)&&(funct3==0b010)){
			imm = command[*pc]>>20;
			rd = (command[*pc]>>7) & 0b11111;
			rs1 = (command[*pc]>>15) & 0b11111;
			imm=imm-(imm&0x800)*2;
		if ((flag&4)==4)
			printf("*pc[%d],flw,imm=%d,rd=%d,rs1=%d,mem[%d]=%d\n",*pc,imm,rd,rs1,(imm+(int)rg[rs1])/4,mem[(imm+(int)rg[rs1])/4]);
			frg[rd]=*((float*)&mem[(imm+(int)rg[rs1])/4]);
			mmap[(imm+(int)(rg[rs1])/4)/KIZAMI]++;
			*pc=*pc+1;
			}
	//fsw
	else if ((opecode==0b0100111)&&(funct3==0b010)){
			imm = ((command[*pc]&(0x7f<<25))>>20)|((command[*pc]>>7)&0x1f);
			imm = imm - 2*(imm&0x800);
			rs1 = (command[*pc]>>15) & 0b11111;
			rs2 = (command[*pc]>>20) & 0b11111;
		if ((flag&4)==4)
			printf("*pc[%d],fsw,imm=%d,rs1=%d,rs2=%d,frg[rs2]=%lf,mem[%d]=%d\n",*pc,imm,rs1,rs2,frg[rs2],(imm+(int)rg[rs1])/4,mem[(imm+(int)rg[rs1])/4]);
			mem[(imm+(int)rg[rs1])/4]=*((unsigned int*)(&frg[rs2]));
			mmap[(imm+(int)(rg[rs1])/4)/KIZAMI]++;
		if ((flag&4)==4)
			printf("memには%dが入ったよ\n",mem[(imm+(int)rg[rs1])/4]);
			*pc=*pc+1;
	}
	//float 演算
	else if (opecode==0b1010011){
			imm = command[*pc]>>25;
			rs2 = (command[*pc]>>20) & 0b11111;
			rs1 = (command[*pc]>>15) & 0b11111;
			rd = (command[*pc]>>7) & 0b11111;
		if ((flag&4)==4)
		printf("imm=%d,rs1=%d,rs2=%d,rd=%d\n",imm,rs1,rs2,rd);

		//fadd.s
		if(imm==0){
		if ((flag&4)==4)
			printf("*pc[%d],fadd.s\n",*pc);
			frg[rd]=frg[rs1]+frg[rs2];
		}
		//fsub.s
		else if(imm==4){
		if ((flag&4)==4)
			printf("*pc[%d],fsub.s\n",*pc);
			frg[rd]=frg[rs1]-frg[rs2];
		}
		//fmul.s
		else if(imm==8){
		if ((flag&4)==4)
			printf("*pc[%d],fmul.s\n",*pc);
			frg[rd]=frg[rs1]*frg[rs2];
		}
		//fdiv.s
		else if(imm==12){
		if ((flag&4)==4)
			printf("*pc[%d],fdiv.s\n",*pc);
			frg[rd]=frg[rs1]/frg[rs2];
		}
		//fsqrt.s
		else if((imm==0b0101100)&&(rs2==0)){
		if ((flag&4)==4)
			printf("*pc[%d],fsqrt.s\n",*pc);
			frg[rd]=sqrtf(frg[rs1]);
		}
		//fsgnj.s
		else if((imm==0b0010000)&&(funct3==0)){
		if ((flag&4)==4)
			printf("*pc[%d],fsgnj.s\n",*pc);
			unsigned int i1=*((unsigned int*)&frg[rs1]);
			unsigned int i2=*((unsigned int*)&frg[rs2]);
			unsigned int i3;
			i3=(i1&0x7fffffff)|(i2&0x80000000);
			frg[rd]=*((float*)&i3);
		}
		//fsgnjn.s
		else if((imm==0b0010000)&&(funct3==1)){
		if ((flag&4)==4)
			printf("*pc[%d],fsgnjn.s\n",*pc);
			unsigned int i1=*((unsigned int*)&frg[rs1]);
			unsigned int i2=*((unsigned int*)&frg[rs2]);
			unsigned int i3;
			i3=(i1&0x7fffffff)|(0x80000000^(i2&0x80000000));
			frg[rd]=*((float*)&i3);
		}
		//fsgnjx.s
		else if((imm==0b0010000)&&(funct3==2)){
		if ((flag&4)==4)
			printf("*pc[%d],fsgnjx.s\n",*pc);
			unsigned int i1=*((unsigned int*)&frg[rs1]);
			unsigned int i2=*((unsigned int*)&frg[rs2]);
			unsigned int i3;
			i3=(i1&0x7fffffff)|((i1&0x80000000)^(i2&0x80000000));
			frg[rd]=*((float*)&i3);
		
		}
		//fcvt.w.s
		else if((imm==0b1100000)&&(rs2==0)){
		if ((flag&4)==4)
			printf("*pc[%d],fcvt.w.s\n",*pc);
			if (funct3==0b001){
			rg[rd]=(unsigned int)frg[rs1];
			}else if(funct3==0b010) {
			rg[rd]=(unsigned int)( floorf (frg[rs1]));
			}else{
				printf("error\n");
			}

		}
		//feq.d
		else if((imm==0b1010000)&&(funct3==2)){
		if ((flag&4)==4)
			printf("*pc[%d],feq.s\n",*pc);
			rg[rd]=(frg[rs1]==frg[rs2])?1:0;
		}
		//flt.d
		else if((imm==0b1010000)&&(funct3==1)){
		if ((flag&4)==4)
			printf("*pc[%d],flt.s\n",*pc);
			rg[rd]=(frg[rs1]<frg[rs2])?1:0;
		}
		//fle.d
		else if((imm==0b1010000)&&(funct3==0)){
		if ((flag&4)==4)
			printf("*pc[%d],fle.s\n",*pc);
			rg[rd]=(frg[rs1]<=frg[rs2])?1:0;
		}
		//fcvt.s.w
		else if((imm==0b1101000)&&(rs2==0)){
		if ((flag&4)==4)
			printf("*pc[%d],fcvt.s.w\n",*pc);
			frg[rd]=(float)((int)rg[rs1]);
		}
		//fmv.w.x
		else if((imm==0b1111000)&&(funct3==0)&&(rs2==0)){
		if ((flag&4)==4)
			printf("*pc[%d],fmv.w.x\n",*pc);
			frg[rd]=*((float*)&rg[rs1]);
		}
		//fcos.s
		else if((imm==0b1100001)&&(rs2==0)){
		if ((flag&4)==4)
			printf("*pc[%d],fcos.s\n",*pc);
			frg[rd]=cosf(frg[rs1]);
		}
		//fsin.s
		else if((imm==0b1100001)&&(rs2==1)){
		if ((flag&4)==4)
			printf("*pc[%d],fsin.s\n",*pc);
			frg[rd]=sinf(frg[rs1]);
		}
		//fatan.s
		else if((imm==0b1101001)&&(rs2==0)){
		if ((flag&4)==4)
			printf("*pc[%d],fatan.s\n",*pc);
			frg[rd]=atanf(frg[rs1]);
		}
		else{
			printf("error\n");
		}
	*pc=*pc+1;
	}
	//print_float
	else if (opecode==0b1101011){
			rs1 = (command[*pc]>>15) & 0b11111;
			fwrite (&frg[rs1],sizeof(float),1,fpo);
			//printf("print_float:%1.2f\n",frg[rs1]);
			*pc=*pc +1;
		}
			
	//例外処理
	else {
		printf("command[%d]に命令セットにないcodeが含まれているよ!\n",*pc);
		printf("確認用\n16進->%s\n2進->%s\n",int16bin(command[*pc]),int2bin(command[*pc]));
		*pc=*pc+1;
	}
}
