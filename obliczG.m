%funkcja - wyznaczenie wektora wyraz�w zawieraj�cych sk�adowe momentu zale�ne od si�
%grawitacji
function [G]=obliczG(T,I,r,m)

%wyj�cie:
%G - wektor wyraz�w zawieraj�cych sk�adowe momentu zale�ne od si�
%grawitacji

%wej�cia:
%T - jednorodne macierze przekszta�ce�
%I - jednorodne macierze inercji
%r - wektor po�o�e� �rodk�w ci�ko�ci 
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
