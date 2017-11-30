#include <iostream>
#include <string>
using namespace std;

void Q0();
void Q1();
void Q2();
void Q3();
void Q4();
void Q5();
void Q6();
void Q7();

void Print();

void Move(char dir);
void Write(char c);
int head;
   string fita ="";


bool passos;
int main() {//_0010_0011_

    string num1,num2,desejo;
    
    cout<<"Bem vindo ao programa de soma binaria utilizando todo o poder computacional da maquina de tuning do Darim"<<endl;

   cout << "Insira o primeiro numero" << endl;
   getline(cin,num1); 
   cout << "Insira o segundo numero" << endl;
   getline(cin,num2); 
   
      cout << "Deseja ver todos os passos? Y/N" << endl;
   getline(cin,desejo); 
   
   fita = " 000"+num1+" 000"+num2+" ";
   if(desejo[0]=='y'||desejo[0]=='Y'){
       passos=true;
   }else{
       passos=false;
   }
   
   head =0;
   
   Move('r');
   Q0();
   
    cout<<"Resultado final: "<<fita<<endl;
}

void Q0(){
    Print();
   if(fita[head]=='0'){
       Write('1');
       Move('r');
       Q0();
   }else if(fita[head]=='1'){
       Write('0');
       Move('r');
       Q0();
   }else{
       Move('l');
       Q1();
   }
}
void Q1(){
    Print();
    if(fita[head]=='1'){
       Write('0');
       Move('l');
       Q1();
   }else if (fita[head]=='0') {
       Write('1');
       Move('l');
       Q2();
   }
}

void Q2(){
    Print();
   if(fita[head]=='0'){
       Move('l');
       Q2();
   }else if(fita[head]=='1'){
       Move('l');
       Q2();
   }else{
       Move('r');
       Q3();
   }
}
void Q3(){
    Print();
   if(fita[head]=='0'){
       Write('1');
       Move('r');
       Q3();
   }else if(fita[head]=='1'){
       Write('0');
       Move('r');
       Q3();
   }else{
       Move('r');
       Q4();
   }
}


void Q4(){
    Print();
       if(fita[head]=='0'){
       Move('r');
       Q4();
   }else if(fita[head]=='1'){
       Move('r');
       Q4();
   }else{
       Move('l');
       Q5();
   }
    
    
}
void Q5(){
    Print();
    
if(fita[head]=='1'){
       Write('0');
       Move('l');
       Q5();
   }else if (fita[head]=='0'){
       Write('1');
       Move('l');
       Q6();
   }
}


	void Q6() {
    Print();
		if(fita[head]=='1'||fita[head]=='0'){
			Move('l');
			Q6();
		} else {
			Move('l');
			Q7();
		}


	}
	void Q7() {
    Print();
		if(fita[head]=='1'||fita[head]=='0'){
			Move('l');
			Q7();
		} else {
			Move('r');
			Q0();
		}


	}


void Move(char dir){
    if(dir=='r'){
        head+=1;
    }else if(dir=='l'){
        head-=1;
    }
}

void Write(char c){
    fita[head]=c;
}

void Print(){
    if(passos){
    cout<<fita<<endl;
      
        
    }   
}


