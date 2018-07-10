%funkcja obliczajaca macierz U(T,i,j)

function [Uij]=obliczUij(T,i,j)

Qj=[0 -1 0 0;1 0 0 0;0 0 0 0;0 0 0 0];

%przegub obrotowy
Q_r=[0 -1 0 0;1 0 0 0;0 0 0 0;0 0 0 0];
%przegub przesuwny
Q_m=[0 -1 0 0;1 0 0 0;0 0 0 0;0 0 0 0];

if i>=j,
   T0j_1=obliczTkj(T,0,j-1);
   Tj_1i=obliczTkj(T,j-1,i);
   Uij1=T0j_1*Qj;
   Uij=Uij1*Tj_1i;
elseif i<j,
   Uij=zeros(4,4);
end;