%funkcja - obliczanie wybranej sk�adowej macierzy wektora si� od�rodkowych i Coriolisa

function [Hi]=obliczHi(T,I,i)
   
%wej�cia:
%T - jednorodne macierze przekszta�ce�
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
