%% MTH2210A-DOCUMENT DE TRAVAIL
%  Laboratoire 3: DÉCOMPOSITIONS LU et CONDITIONNEMENT
%
%  Auteurs: 
%  Nom et Prenoms                       Matricule: 0000000       Groupe:00
%  Nom et Prenoms                       Matricule: 0000000       Groupe:00
%
%  Date: 
%% Exercice 1
% 
A=gallery('lehmer',1000);
[L,U,P] = lu(A);
b= sum(A,2);
x_approx= A\b;
x_exact= ones(1000);

E= norm(x_exact - x_approx, 2)/ norm (x_exact,2)
% r = norm( A*x_exact - A*x_approx, 2) 
r = norm( b - A*x_approx, 2)

% b)
%% Exercice 2
%
B = zeros(100);
B(1,1) = 1;
for i = 2:100
    B(i,i)=0.1;
end
C = zeros(100);
for i = 1:100
    C(i,i)=1;
end
for i = 1:99
    C(i,i+1) = 2;
end
detB = det(B);
detC = det(C);
condB = cond(B,2);
condC = cond(C,2);

% Non, les déterminants des deux matrices B et C sont proches de 0, mais
% leur conditionnement sont beaucoup plus grand que 1.

%% Exercice 3
%


fprintf ( '%s\t %s \n', ' n', ' Déterminant')
Cond= 1:40;
for n = 1:40
    V = zeros(n+1);
    v = 0:(1/n):1;
    for i = 1:n+1
        V(:,i)= v.^(i-1);
    end
    detV = det(V);
    fprintf('%2.0d \t %16.15e \n', n , detV) 
    Cond(n)= cond(V, inf);
end
x=2:41;
figure (1) 
semilogy(x, Cond)
xlabel('n+1')
ylabel('Conditionnement')
title('conditionnement des matrices de Vandermonde')
