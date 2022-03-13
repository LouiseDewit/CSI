%% MTH2210A-RAPPORT DE LABORATOIRE
%  Laboratoire 3: DÉCOMPOSITIONS LU et CONDITIONNEMENT
%
%  Auteurs: 
%  Dewit, Louise                       Matricule: 1902576       Groupe:02
%  Beaulieu, Marie-Pier                Matricule: 1905107       Groupe:02
%
%  Date: 03/10/2019
%% Question (a)
%
warning off 
n = [5;10;15;20;25;30;35;40];
E= 1:8;
fprintf ( '%s\t %s\t %s \n', ' n', ' conditionnement', '             borne inférieure')
for i = 1:8
    H=hilb(n(i));
    b= H*ones(n(i),1);
    x_approx = H\b;
    x_exact = ones(n(i),1);
    E(i) = norm(x_exact - x_approx, inf)/ norm (x_exact,inf);
    BI = E(i) * norm(b, inf)/norm(b - H*x_approx, inf);
    Cond = cond( H, inf);
    fprintf('%2.0d \t %16.15e\t %16.15e \n', n(i) , Cond, BI) 
end

figure (1) 
semilogy(n, E)
xlabel('n')
ylabel('Erreur relative')
title('erreur relative en fonction de n')

%% Question(b)
%%
% Plus n est grand, plus le conditionnement de la matrice H est grand.
% Puisque le conditionnement est supérieur à 1, on conclu que les matrices
% sont mal conditionnées. Plus n augmente, plus les matrices sont mal
% conditionnées. De plus, les bornes inférieures augmentent aussi quand n
% augmentent. L'erreur relative se stabilise à partir de n =20.
