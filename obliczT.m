%funkcja - obliczenie jednorodnych macierzy przekszta³ceñ
function [T]=obliczT(fi,alfa,d,a)
%wyjœcie:
%T - jednorodne macierze przekszta³ceñ

%wejœcia:
%alfa - wektor k¹tów skrêcenia
%d - wektor odsuniêæ cz³onów
%a - wektor d³ugoœæ cz³onów
%fi - wektor po³o¿eñ k¹towych w przegubach

%Obliczanie macierzy T1
i=1;
   Tzfi=[cos(fi(i)) -sin(fi(i)) 0 0;
   	 sin(fi(i)) cos(fi(i)) 0 0;
       0 0 1 0;
       0 0 0 1];
	Tzd=[1 0 0 0;
      0 1 0 0;    
      0 0 1 d(i);
      0 0 0 1;];
	Txa=[1 0 0 a(i);
   	0 1 0 0;
      0 0 1 0;
      0 0 0 1;];
	Txalfa=[1 0 0 0;
   	  0 cos(alfa(i)) -sin(alfa(i)) 0;
        0 sin(alfa(i)) cos(alfa(i)) 0;
        0 0 0 1];
   Tcalc=Tzd*Tzfi*Txa*Txalfa;     
   %put the matrix Tcalc into matrix T  
   T1=Tcalc;
   
%Obliczanie macierzy T2   
i=2;
   Tzfi=[cos(fi(i)) -sin(fi(i)) 0 0;
   	 sin(fi(i)) cos(fi(i)) 0 0;
       0 0 1 0;
       0 0 0 1];
	Tzd=[1 0 0 0;
      0 1 0 0;    
      0 0 1 d(i);
      0 0 0 1;];
	Txa=[1 0 0 a(i);
   	0 1 0 0;
      0 0 1 0;
      0 0 0 1;];
	Txalfa=[1 0 0 0;
   	  0 cos(alfa(i)) -sin(alfa(i)) 0;
        0 sin(alfa(i)) cos(alfa(i)) 0;
        0 0 0 1];
   Tcalc=Tzd*Tzfi*Txa*Txalfa;     
   %put the matrix Tcalc into matrix T  
   T2=Tcalc;
   
%Obliczanie macierzy T3   
i=3;
   Tzfi=[cos(fi(i)) -sin(fi(i)) 0 0;
   	 sin(fi(i)) cos(fi(i)) 0 0;
       0 0 1 0;
       0 0 0 1];
	Tzd=[1 0 0 0;
      0 1 0 0;    
      0 0 1 d(i);
      0 0 0 1;];
	Txa=[1 0 0 a(i);
   	0 1 0 0;
      0 0 1 0;
      0 0 0 1;];
	Txalfa=[1 0 0 0;
   	  0 cos(alfa(i)) -sin(alfa(i)) 0;
        0 sin(alfa(i)) cos(alfa(i)) 0;
        0 0 0 1];
   Tcalc=Tzd*Tzfi*Txa*Txalfa;     
   %put the matrix Tcalc into matrix T  
   T3=Tcalc;
   
%Obliczanie macierzy T4   
i=4;
   Tzfi=[cos(fi(i)) -sin(fi(i)) 0 0;
   	 sin(fi(i)) cos(fi(i)) 0 0;
       0 0 1 0;
       0 0 0 1];
	Tzd=[1 0 0 0;
      0 1 0 0;    
      0 0 1 d(i);
      0 0 0 1;];
	Txa=[1 0 0 a(i);
   	0 1 0 0;
      0 0 1 0;
      0 0 0 1;];
	Txalfa=[1 0 0 0;
   	  0 cos(alfa(i)) -sin(alfa(i)) 0;
        0 sin(alfa(i)) cos(alfa(i)) 0;
        0 0 0 1];
   Tcalc=Tzd*Tzfi*Txa*Txalfa;     
   %put the matrix Tcalc into matrix T  
   T4=Tcalc;
   
%Obliczanie macierzy T5   
i=5;
   Tzfi=[cos(fi(i)) -sin(fi(i)) 0 0;
   	 sin(fi(i)) cos(fi(i)) 0 0;
       0 0 1 0;
       0 0 0 1];
	Tzd=[1 0 0 0;
      0 1 0 0;    
      0 0 1 d(i);
      0 0 0 1;];
	Txa=[1 0 0 a(i);
   	0 1 0 0;
      0 0 1 0;
      0 0 0 1;];
	Txalfa=[1 0 0 0;
   	  0 cos(alfa(i)) -sin(alfa(i)) 0;
        0 sin(alfa(i)) cos(alfa(i)) 0;
        0 0 0 1];
   Tcalc=Tzd*Tzfi*Txa*Txalfa;     
   %put the matrix Tcalc into matrix T  
   T5=Tcalc;   
   
%Obliczanie macierzy T6   
i=6;
   Tzfi=[cos(fi(i)) -sin(fi(i)) 0 0;
   	 sin(fi(i)) cos(fi(i)) 0 0;
       0 0 1 0;
       0 0 0 1];
	Tzd=[1 0 0 0;
      0 1 0 0;    
      0 0 1 d(i);
      0 0 0 1;];
	Txa=[1 0 0 a(i);
   	0 1 0 0;
      0 0 1 0;
      0 0 0 1;];
	Txalfa=[1 0 0 0;
   	  0 cos(alfa(i)) -sin(alfa(i)) 0;
        0 sin(alfa(i)) cos(alfa(i)) 0;
        0 0 0 1];
   Tcalc=Tzd*Tzfi*Txa*Txalfa;     
   %put the matrix Tcalc into matrix T  
   T6=Tcalc;   
      
T=[T1,T2,T3,T4,T5,T6];
   