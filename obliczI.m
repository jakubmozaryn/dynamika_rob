%funkcja - obliczenie jednorodnych macierzy inercji

function [I]=obliczI(Ixx,Iyy,Izz,rx,ry,rz,mas)

%wyjœcie:
%I - wektor jednorodnych macierzy inercji

%wejœcia:
%mas - wektor mas poszczególnych cz³onów
%rx, ry, rz - wektory wspó³rzêdnych œrodków mas cz³onów
%Ixx, Iyy, Izz - wektory masowych momentów bezw³adnoœci cz³onów

l=1;
%obliczanie macierzy I1
i=1;
for k=1:4,
        mirxi=mas(i)*rx(i);
        miryi=mas(i)*ry(i);
        mirzi=mas(i)*rz(i);
     if (k==1),
        I1(l,k)=(-Ixx(i)+Iyy(i)+Izz(i))/2;
        I1(l+1,k)=0;
        I1(l+2,k)=0;
        I1(l+3,k)=mirxi;
     elseif (k==2),
        I1(l,k)=0;
        I1(l+1,k)=(Ixx(i)-Iyy(i)+Izz(i))/2;
        I1(l+2,k)=0;
        I1(l+3,k)=miryi;
     elseif (k==3),
        I1(l,k)=0;
        I1(l+1,k)=0;
        I1(l+2,k)=(Ixx(i)+Iyy(i)-Izz(i))/2;
        I1(l+3,k)=mirzi;
     elseif (k==4),
        I1(l,k)=mirxi;
        I1(l+1,k)=miryi;
        I1(l+2,k)=mirzi;
        I1(l+3,k)=mas(i);
		end; 	
end;      

%obliczanie macierzy I2      
i=2;
for k=1:4,
        mirxi=mas(i)*rx(i);
        miryi=mas(i)*ry(i);
        mirzi=mas(i)*rz(i);
     if (k==1),
        I2(l,k)=(-Ixx(i)+Iyy(i)+Izz(i))/2;
        I2(l+1,k)=0;
        I2(l+2,k)=0;
        I2(l+3,k)=mirxi;
     elseif (k==2),
        I2(l,k)=0;
        I2(l+1,k)=(Ixx(i)-Iyy(i)+Izz(i))/2;
        I2(l+2,k)=0;
        I2(l+3,k)=miryi;
     elseif (k==3),
        I2(l,k)=0;
        I2(l+1,k)=0;
        I2(l+2,k)=(Ixx(i)+Iyy(i)-Izz(i))/2;
        I2(l+3,k)=mirzi;
     elseif (k==4),
        I2(l,k)=mirxi;
        I2(l+1,k)=miryi;
        I2(l+2,k)=mirzi;
        I2(l+3,k)=mas(i);
     end;
end;     

%obliczanie macierzy I3      
i=3;
for k=1:4,
        mirxi=mas(i)*rx(i);
        miryi=mas(i)*ry(i);
        mirzi=mas(i)*rz(i);
     if (k==1),
        I3(l,k)=(-Ixx(i)+Iyy(i)+Izz(i))/2;
        I3(l+1,k)=0;
        I3(l+2,k)=0;
        I3(l+3,k)=mirxi;
     elseif (k==2),
        I3(l,k)=0;
        I3(l+1,k)=(Ixx(i)-Iyy(i)+Izz(i))/2;
        I3(l+2,k)=0;
        I3(l+3,k)=miryi;
     elseif (k==3),
        I3(l,k)=0;
        I3(l+1,k)=0;
        I3(l+2,k)=(Ixx(i)+Iyy(i)-Izz(i))/2;
        I3(l+3,k)=mirzi;
     elseif (k==4),
        I3(l,k)=mirxi;
        I3(l+1,k)=miryi;
        I3(l+2,k)=mirzi;
        I3(l+3,k)=mas(i);
     end;
end;     
%obliczanie macierzy I4      
i=4;
for k=1:4,
        mirxi=mas(i)*rx(i);
        miryi=mas(i)*ry(i);
        mirzi=mas(i)*rz(i);
     if (k==1),
        I4(l,k)=(-Ixx(i)+Iyy(i)+Izz(i))/2;
        I4(l+1,k)=0;
        I4(l+2,k)=0;
        I4(l+3,k)=mirxi;
     elseif (k==2),
        I4(l,k)=0;
        I4(l+1,k)=(Ixx(i)-Iyy(i)+Izz(i))/2;
        I4(l+2,k)=0;
        I4(l+3,k)=miryi;
     elseif (k==3),
        I4(l,k)=0;
        I4(l+1,k)=0;
        I4(l+2,k)=(Ixx(i)+Iyy(i)-Izz(i))/2;
        I4(l+3,k)=mirzi;
     elseif (k==4),
        I4(l,k)=mirxi;
        I4(l+1,k)=miryi;
        I4(l+2,k)=mirzi;
        I4(l+3,k)=mas(i);
		end; 	
end;      
%obliczanie macierzy I5      
i=5;
for k=1:4,
        mirxi=mas(i)*rx(i);
        miryi=mas(i)*ry(i);
        mirzi=mas(i)*rz(i);
     if (k==1),
        I5(l,k)=(-Ixx(i)+Iyy(i)+Izz(i))/2;
        I5(l+1,k)=0;
        I5(l+2,k)=0;
        I5(l+3,k)=mirxi;
     elseif (k==2),
        I5(l,k)=0;
        I5(l+1,k)=(Ixx(i)-Iyy(i)+Izz(i))/2;
        I5(l+2,k)=0;
        I5(l+3,k)=miryi;
     elseif (k==3),
        I5(l,k)=0;
        I5(l+1,k)=0;
        I5(l+2,k)=(Ixx(i)+Iyy(i)-Izz(i))/2;
        I5(l+3,k)=mirzi;
     elseif (k==4),
        I5(l,k)=mirxi;
        I5(l+1,k)=miryi;
        I5(l+2,k)=mirzi;
        I5(l+3,k)=mas(i);
		end; 	
end;      
%obliczanie macierzy I6      
i=6;
for k=1:4,
        mirxi=mas(i)*rx(i);
        miryi=mas(i)*ry(i);
        mirzi=mas(i)*rz(i);
     if (k==1),
        I6(l,k)=(-Ixx(i)+Iyy(i)+Izz(i))/2;
        I6(l+1,k)=0;
        I6(l+2,k)=0;
        I6(l+3,k)=mirxi;
     elseif (k==2),
        I6(l,k)=0;
        I6(l+1,k)=(Ixx(i)-Iyy(i)+Izz(i))/2;
        I6(l+2,k)=0;
        I6(l+3,k)=miryi;
     elseif (k==3),
        I6(l,k)=0;
        I6(l+1,k)=0;
        I6(l+2,k)=(Ixx(i)+Iyy(i)-Izz(i))/2;
        I6(l+3,k)=mirzi;
     elseif (k==4),
        I6(l,k)=mirxi;
        I6(l+1,k)=miryi;
        I6(l+2,k)=mirzi;
        I6(l+3,k)=mas(i);
		end; 	
 end;     
 I=[I1,I2,I3,I4,I5,I6];     
