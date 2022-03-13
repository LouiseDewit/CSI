J=0.02;
B=20;
K=300;
g=9.81;
m=100;
l=1.80;
Km=20;
tau=0.2;
s=tf('s');
Ms=Km/(tau*s+1);
Gs=1/(J*s^(2)+B*s+K-(m*g*l/2));
Fs=Ms*Gs;
Kd = 44.684;
Kp = 30*Kd;
Ki = 0;

H= Km*(Kd*s+Kp)/(J*tau*s^3+(B*tau+J)*s^2+(K*tau-((m*g*l*tau)/2)+B+Km*Kd)*s+K-Km*Kp-(m*g*l)/2);
%H = tf([Km*Kd, Km*Kp], [J*tau B*tau+J, K*tau-((m*g*l*tau)/2)+B+Km*Kd, K-Km*Kp-(m*g*l)/2]);
damp(H)