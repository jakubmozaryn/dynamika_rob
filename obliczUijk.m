%%funkcja obliczajaca macierz U(T,i,j,k)

function [Uijk]=obliczUijk(T,i,j,k)

Q=[0 -1 0 0;1 0 0 0;0 0 0 0;0 0 0 0];

if ((i>=k)&(k>=j)),
   T0j_1=obliczTkj(T,0,j-1);
   Tj_1k_1=obliczTkj(T,j-1,k-1);
   Tk_1i=obliczTkj(T,k-1,i);
   Uij4=T0j_1*Q*Tj_1k_1*Q*Tk_1i;
   
elseif ((i>=j)&(j>=k)),
   T0k_1=obliczTkj(T,0,k-1);
   Tk_1j_1=obliczTkj(T,k-1,j-1);
   Tj_1i=obliczTkj(T,j-1,i);
   Uij4=T0k_1*Q*Tk_1j_1*Q*Tj_1i;
   
elseif ((i<j)|(i<k)),   
   Uij4=zeros(4,4);
   
end
Uijk=Uij4;

