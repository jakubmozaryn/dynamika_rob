%funkcja - obliczanie macierzy sk�adowch wektora si� od�rodkowych i Coriolisa
function [H1,H2,H3,H4,H5,H6]=obliczH(T,I);

%wyj�cie:
%H1-H6 - obliczanie macierzy b�d�cych sk�adowymi wektora si� od�rodkowych i Coriolisa

%wej�cia:
%T - jednorodne macierze przekszta�ce�
%I - jednorodne macierze inercji

for i=1:6,
   if i==1,
      H1=obliczHi(T,I,1);
   elseif i==2,
      H2=obliczHi(T,I,2);
   elseif i==3,
      H3=obliczHi(T,I,3);
   elseif i==4,
      H4=obliczHi(T,I,4);
   elseif i==5,
      H5=obliczHi(T,I,5);
   elseif i==6,
      H6=obliczHi(T,I,6);
   end   
 end
 