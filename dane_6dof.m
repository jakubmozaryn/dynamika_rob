
%wczytanie danych okre�laj�cych parametry robota

function [alfa,d,a,mas,rx,ry,rz,Ixx,Iyy,Izz]=dane_6dof(robot_flag);

%wej�cia: 
%robot_flag - liczba stopni swobody robota

%wyj�cia:
%alfa - wektor k�t�w skr�cenia
%d - wektor odsuni�� cz�on�w
%a - wektor d�ugo�� cz�on�w
%mas - wektor mas poszczeg�lnych cz�on�w
%rx, ry, rz - wektory wsp�rz�dnych �rodk�w mas cz�on�w
%Ixx, Iyy, Izz - wektory masowych moment�w bezw�adno�ci cz�on�w

if robot_flag==2,
	alfa=[pi/2 0 0 0 0 0];
	d=[0 0 0 0 0 0];
	a=[0 0.4318 0 0 0 0];
	mas=[0 17.4 0 0 0 0];
	rx=[0 -0.3638 0 0 0 0];
	ry=[0 0.006 0 0 0 0];
	rz=[0 0.2275 0 0 0 0];
	Ixx=[0 0.13 0 0 0 0];
	Iyy=[0.35 0.524 0 0 0 0];
   Izz=[0 0.539 0 0 0 0];
elseif robot_flag==3,
   alfa=[pi/2 0 -pi/2 0 0 0];
	d=[0 0 0.15005 0 0 0];
	a=[0 0.4318 0.0203 0 0 0];
	mas=[0 17.4 4.8 0 0 0];
	rx=[0 -0.3638 -0.0203 0 0 0];
	ry=[0 0.006 -0.0141 0 0 0];
	rz=[0 0.2275 0.070 0 0 0];
	Ixx=[0 0.13 0.066 0 0 0];
	Iyy=[0.35 0.524 0.086 0 0 0];
	Izz=[0 0.539 0.0125 0 0 0];
elseif robot_flag==4,
   alfa=[pi/2 0 -pi/2 pi/2 0 0];
	d=[0 0 0.15005 0.4318 0 0];
	a=[0 0.4318 0.0203 0 0 0];
	mas=[0 17.4 4.8 0.82 0 0];
	rx=[0 -0.3638 -0.0203 0 0 0];
	ry=[0 0.006 -0.0141 0.019 0 0];
	rz=[0 0.2275 0.070 0 0 0];
	Ixx=[0 0.13 0.066 0.0018 0 0];
	Iyy=[0.35 0.524 0.086 0.0013 0 0];
	Izz=[0 0.539 0.0125 0.0018 0 0];
elseif robot_flag==5,
   alfa=[pi/2 0 -pi/2 pi/2 -pi/2 0];
	d=[0 0 0.15005 0.4318 0 0];
	a=[0 0.4318 0.0203 0 0 0];
	mas=[0 17.4 4.8 0.82 0.34 0];
	rx=[0 -0.3638 -0.0203 0 0 0];
	ry=[0 0.006 -0.0141 0.019 0 0];
	rz=[0 0.2275 0.070 0 0 0.032];
	Ixx=[0 0.13 0.066 0.0018 0.0003 0];
	Iyy=[0.35 0.524 0.086 0.0013 0.0004 0];
	Izz=[0 0.539 0.0125 0.0018 0.0003 0];
elseif robot_flag==6,
   alfa=[pi/2 0 -pi/2 pi/2 -pi/2 0];
	d=[0 0 0.15005 0.4318 0 0];
	a=[0 0.4318 0.0203 0 0 0];
	mas=[0 17.4 4.8 0.82 0.34 0.09];
	rx=[0 -0.3638 -0.0203 0 0 0];
	ry=[0 0.006 -0.0141 0.019 0 0];
	rz=[0 0.2275 0.070 0 0 0.032];
	Ixx=[0 0.13 0.066 0.0018 0.0003 0.00015];
	Iyy=[0.35 0.524 0.086 0.0013 0.0004 0.00015];
   Izz=[0 0.539 0.0125 0.0018 0.0003 0.00004];
end;


   