%funkcja - obliczanie wybranej sk³adowej macierzy wektora si³ odœrodkowych i Coriolisa

function [Hi]=obliczHi(T,I,i)
   
%wejœcia:
%T - jednorodne macierze przekszta³ceñ
%I - jednorodne macierze inercji

Hi=zeros(6,6);

for k=1:6,
   for m=1:6,
      ikm=[i k m];
      hikm=0;
      for j=max(ikm):6,
   		ujkm=obliczUijk(T,j,k,m);
         uji=obliczUij(T,j,i);
         ujiT=uji';
   		Jj=I(:,(4*(j-1)+1):4*j);
         hikm=hikm+trace(ujkm*Jj*ujiT);
      end   
    Hi(k,m)=hikm;  
   end
end
