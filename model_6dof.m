%funkcja pozwalaj�ca na obliczenie macierzy modelu dynamiki robota dla okre�lenia po�o�enia
function [M,H1,H2,H3,H4,H5,H6,G,B]=model_6dof(fi,robot_flag)

%wej�cia:
%fi - po�o�enie ramienia (k�ty w przegubach), za�o�enie �e przeguby s�
%obrotowe
%robot_flag - liczba stopni swobody 1-6

%wyj�cia:
%M - macierz bezw�adno�ci robota
%H1,...,H6 - macierze b�d�ce sk�adowymi wektora si� od�rodkowych i Coriolisa
%B - macierz sk�adowych tarcia
%G - wektor wyraz�w zawieraj�cych sk�adowe momentu zale�ne od si�
%grawitacji

%zamiana po�o�enia w danej chwili, na po�o�enie z zakresu (+/- 2*pi)
pom=fix(fi/(2*pi));
fi_pom=fi-pom*2*pi;

%podanie warto�ci sta�ych charakterystycznych dla robota PUMA 560
[alfa,d,a,mas,rx,ry,rz,Ixx,Iyy,Izz]=dane_6dof(robot_flag);

%Obliczanie macierzy I
I=obliczI(Ixx,Iyy,Izz,rx,ry,rz,mas);

%Obliczanie macierzy T
T=obliczT(fi_pom,alfa,d,a);

%Obliczanie macierzy tarcia wiskotycznego
B=obliczB;

%Obliczenie macierzy M
M=obliczM6(T,I,robot_flag);

%okre�lenie macierzy po�o�e� �rodk�w ci�ko�ci
r=[rx;ry;rz;1 1 1 1 1 1];

%Obliczenie macierzy G
G=obliczG(T,I,r,mas);

%Obliczanie macierzy  [H1...H6]
[H1,H2,H3,H4,H5,H6]=obliczH(T,I);
