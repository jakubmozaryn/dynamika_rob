%funkcja obliczajaca macierz T(k,j), gdzie k-poprzedni uk³ad(i-1), j-nastepny uk³ad(i) np:T(0,6)
%warunkiem jest to, aby j>k

function[T1]=obliczTkj(T,k,j)

if (k==j),
   T1=eye(4,4);	%macierz przeksztalcenia jest dla Tii=I
elseif (k~=j),
   T1=eye(4,4);   
   for l=k:1:j-1,   
   	T1=T1*T(:,(4*l+1):4*(l+1));
   end
end;
