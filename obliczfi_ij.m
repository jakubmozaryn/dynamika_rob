%wyznaczenie wektora prêdkoœci

function [fid_ij]=obliczfi_ij(fid);
fid_ij=zeros(36,1);
%%fid=zeros(2);
%%fid(1)=(fi(1)-fi_1(1))/Tp;
%%fid(2)=(fi(2)-fi_1(2))/Tp;

for i=0:5;
   for j=1:6;
      fid_ij(i*6+j)=fid(i+1)*fid(j);
   end
end

fid_ij=fid_ij;