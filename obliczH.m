%funkcja - obliczanie macierzy sk³adowch wektora si³ odœrodkowych i Coriolisa
function [H1,H2,H3,H4,H5,H6]=obliczH(T,I);

%wyjœcie:
%H1-H6 - obliczanie macierzy bêd¹cych sk³adowymi wektora si³ odœrodkowych i Coriolisa

%wejœcia:
%T - jednorodne macierze przekszta³ceñ
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
 