%funkcja pozwalaj¹ca na obliczenie macierzy modelu dynamiki robota dla okreœlenia po³o¿enia
function [M,H1,H2,H3,H4,H5,H6,G,B]=model_6dof(fi,robot_flag)

%wejœcia:
%fi - po³o¿enie ramienia (k¹ty w przegubach), za³o¿enie ¿e przeguby s¹
%obrotowe
%robot_flag - liczba stopni swobody 1-6

%wyjœcia:
%M - macierz bezw³adnoœci robota
%H1,...,H6 - macierze bêd¹ce sk³adowymi wektora si³ odœrodkowych i Coriolisa
%B - macierz sk³adowych tarcia
%G - wektor wyrazów zawieraj¹cych sk³adowe momentu zale¿ne od si³
%grawitacji

%zamiana po³o¿enia w danej chwili, na po³o¿enie z zakresu (+/- 2*pi)
pom=fix(fi/(2*pi));
fi_pom=fi-pom*2*pi;

%podanie wartoœci sta³ych charakterystycznych dla robota PUMA 560
[alfa,d,a,mas,rx,ry,rz,Ixx,Iyy,Izz]=dane_6dof(robot_flag);

%Obliczanie macierzy I
I=obliczI(Ixx,Iyy,Izz,rx,ry,rz,mas);

%Obliczanie macierzy T
T=obliczT(fi_pom,alfa,d,a);

%Obliczanie macierzy tarcia wiskotycznego
B=obliczB;

%Obliczenie macierzy M
M=obliczM6(T,I,robot_flag);

%okreœlenie macierzy po³o¿eñ œrodków ciê¿koœci
r=[rx;ry;rz;1 1 1 1 1 1];

%Obliczenie macierzy G
G=obliczG(T,I,r,mas);

%Obliczanie macierzy  [H1...H6]
[H1,H2,H3,H4,H5,H6]=obliczH(T,I);
