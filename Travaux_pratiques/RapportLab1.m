%% MTH2210A-RAPPORT DE LABORATOIRE
%  Laboratoire 1: MATLAB
%
%  Auteurs: 
%  Dewit Louise                       Matricule: 1902576       Groupe:02
%  Beaulieu Marie-Pier                       Matricule: 1905107 Groupe:02
%
%  Date: 05-09-2019
%
%% Exercice 1
%
err= [0.5671; 0.4328; 0.4555e-01; 0.3305e-02; 0.2707e-04; 0.1660e-7];
alpha = (1+sqrt(5))/2;
E=  err(1: end-1);
En= err(2: end);

v1 = abs(En./E);
v2 = abs(En./(E.^alpha));
v3 = abs(En./(E.^2));

fprintf( '%s \t %s \t %s \n', 'ratio 1','            ratio 2', '            ratio 3')
for n = 1: 5
    fprintf ('%16.15e \t %16.15e \t %16.15e \n', v1(n), v2(n), v3(n))
end


%% Exercice 2
%
n = 1:20;
h= 10.^(-n);

approx= (tan(1+h)- tan(1-h))./(2.*h);
err= abs(approx - sec(1)^2);

 fprintf ( '%s\t %s \t %s \n','h', '      Approximation', '  Erreur absolue')
 for i= 1: 20  
 fprintf( '%2.0e \t %16.15f \t %16.15f \n',h(i), approx(i), err(i))
 end

 figure(1) 
 loglog( h, err); 
 xlabel('h')
 ylabel('Erreur absolue')
 title(' Erreur absolue en fonction de h')
 


%% Exercice 3
%
x=linspace(-log(2)/2,log(2)/2,129);
p4=1+x + x.^2/2 + x.^3/6 + x.^4/24;
Q= 0.5+0.555538666969001188e-1*x.^2+0.495862884905441294e-3*x.^4;
P=0.249999999999999993 + 0.694360001511792852e-2*x.^2 +0.165203300268279130e-4*x.^4;
r= (Q+x.*P)./(Q-x.*P);
Err1= exp(x) - p4;
Err2= exp(x) - r;
figure(2)
plot(x, Err1)
hold on
plot(x, Err2)
xlabel('x')
ylabel('Erreurs')
title('Erreurs commises en fonction de l approximation')
legend('Erreur 1(x)','Erreur 2(x)','Location','Best')
hold off


%% Commnetaires
% Il est possible d'observer sur le graphique que l'approximation p4(x)
% tend à s'éloigner de la valeur exacte pour des valeurs qui ne sont pas
% dans le voisinage de x=0. L'approximation r(x) à une allure constante a
% environ 0. L'approximation avec r(x) permet une erreur plus faible sur un
% plus grand intervalle. 
%% Exercice 4
%
for n= 1:13
    fact(n)=prod(1:n);
end

m= 1:13;
s= sqrt(2*pi().*m).*(m./exp(1)).^m;

errA= abs(fact-s);
errR= abs(fact-s)./fact;

fprintf( '%s \t %s\t %s\n', ' n','Erreur absolue', '        Erreur relative')
for n=1:13 
    fprintf( '%2d \t %16.15e \t %16.15e \n', n, errA(n), errR(n))
end

%% Commentaires
% Il est possible d'observer que la valeur absolue est croissante en
% fonction du n, tandis que l'erreur relative diminue. Puisque l'erreur
% relative tient compte de l'ordre de grandeur de n, on peut conclure que
% même si l'erreur absolue augmente, son importance diminue avec n.
%% Exercice 5
%
nbor = (1+sqrt(5))/2;
fib = [0,1];
fib1=0;
fib2=1;
deltaf=1;
i=3;
while deltaf > 0.5e-5
    
    x= fib2+fib1;
    ratio= x/fib2;
    fib1=fib2;
    fib2=x;
    deltaf = abs (nbor- ratio);
    i=i+1;
end


%% Exercice 6
% 
%% Question (a)
%
t= linspace(0,15);
%% Question (b)
%
figure(3);
plot( t, Function(t))
xlabel('t')
ylabel('k(t)')
ylim([0,2.5])
title('coefficient de friction d un parachutiste en chute libre en fonction du temps')
%% Exercice 7
%
%% Question (a)
%
x = linspace(0.1,2);
global lambda

%% Question (b)
%

figure(4);
lambda = 0.01525;
plot(x, function2(x))
hold on
lambda = 0.1;
plot(x, function2(x))
hold on
lambda = 0.5;
plot(x, function2(x))
hold off
xlabel('x')
ylabel('f(x)')
legend('lambda = 0,015625','lambda = 0,1','lambda = 0,5','Location','Best')
%% Question 8
%
pn = 2*sqrt(2);
fprintf( '%s \t %s \t %s \n', 'n','            pn', '         erreur absolue')
for n = 3:30
   
    p = (2.^(n-1).*sqrt(2.*(1-sqrt(1-(pn./(2.^(n-1))).^2))));
    pn = p;
    e = abs(pi()- pn);
    fprintf ('%2d \t %16.15e \t %16.15e \n', n, pn, e)
end
%% Commentaires
% À partir de n= 17, l'erreur absolue augmente
% ce qui ne devrait pas être le cas puisque, plus le nombre de côté
% augmente, plus on devrait être proche du périmètre d'un cercle.
%
% pour p15:
% 1.21178...e-09 < 0.5e-8, donc le nombre de chiffres significatifs est 9.
%
% Pour p24: 
% 8.586189...e-04 < 0.5e-2, donc le nombre de chiffres significatifs est 3. 








