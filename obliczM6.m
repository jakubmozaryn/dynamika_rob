%funkcja - obliczenie macierzy bezw³adnoœci robota, v. M6
function [M]=obliczM6(T,I,robot_flag);

%wyjœcie:
%M - macierz bezw³adnoœci robota

%wejœcia:
%T - jednorodne macierze przekszta³ceñ
%I - jednorodne macierze inercji

M=zeros(6,6);

for i=1:6,
   for k=1:6,
      ik=[i k];
      mik=0;
      for j=max(ik):6,
         ujk=obliczUij(T,j,k);
         Jj=I(:,(4*(j-1)+1):4*j);
         ujiT=obliczUij(T,j,i)';
         mik=mik+trace(ujk*Jj*ujiT);
      end
      M(i,k)=mik;
   end
end;   

if robot_flag==2,
   M(3,3)=1;
   M(4,4)=1;
	M(5,5)=1;
	M(6,6)=1;
   
elseif robot_flag==3,
   M(4,4)=1;
	M(5,5)=1;
	M(6,6)=1;   
   
elseif robot_flag==4,
	M(5,5)=1;
   M(6,6)=1;
   
elseif robot_flag==5,
   M(6,6)=1;   
   
end;
