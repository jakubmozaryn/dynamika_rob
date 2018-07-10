
%proste obliczenie macierzy w modelu dynamiki Lagrange'a-Eulera robota 6dof
%w punkcie fi=30 deg

fi=30*[1 1 1 1 1 1];
dof=3;
%obliczenie macierzy modelu Lagrange'a-Eulera dynamiki 
[M,H1,H2,H3,H4,H5,H6,G,B]=model_6dof(fi,dof)