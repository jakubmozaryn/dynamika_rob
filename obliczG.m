%funkcja - wyznaczenie wektora wyrazów zawieraj¹cych sk³adowe momentu zale¿ne od si³
%grawitacji
function [G]=obliczG(T,I,r,m)

%wyjœcie:
%G - wektor wyrazów zawieraj¹cych sk³adowe momentu zale¿ne od si³
%grawitacji

%wejœcia:
%T - jednorodne macierze przekszta³ceñ
%I - jednorodne macierze inercji
%r - wektor po³o¿eñ œrodków ciê¿koœci 
%m - wektor mas

G=zeros(6,1);
a=9.8066;
g0=[0 0 -a 0];
for i=1:6,
   gi=0;
   for j=i:6,
      uji=obliczUij(T,j,i);
      gi=gi+(-m(j)*g0*uji*r(:,j));
      G(i)=gi;
   end
G(i)=gi;   
end;
