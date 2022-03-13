s=tf('s');
%G1 = 1/(s*(s+2)); % stable
%figure;rlocus(G1);grid minor;
%G2 = ((s+1)*(s-2)^2)/((s+3)*s^2); % instable
%figure;rlocus(G2);grid minor;
%G3 = (4*s-1)/(s^3 +s^2 +2*s -1); % instable
%figure;rlocus(G3);grid minor;
%G4 = (s^2 +1) / ((s-6)*s^3); % instable
%figure;rlocus(G4);grid minor;
%G5 = 1/s^3; % instable
%figure;rlocus(G5);grid minor;
%G6 = (s*(s+3))/((s+2)*(s^2 +1)^2); % instable
%figure;rlocus(G6);grid minor;
%G7 = (s*(s+3))/((s+2)*(s^2 +1)*(s^2 -1)); % instable
%figure;rlocus(G7);grid minor;
%G8 = (s+1)/s^2; % stable
%figure;rlocus(G8);grid minor;
%G9 = 1/((s-1)*(s+2)*(s+3)); % stable
%figure;rlocus(G9);grid minor;
%G10 = 1/(s*(s+4)*(s^2 +8*s +32)); % stable
%figure;rlocus(G10);grid minor;
%G11 = 1/(s*(s+4)*(s^2 +4*s +20)); % stable
%figure;rlocus(G11);grid minor;
%G12 = ((s+2)*(s+4))/(s*(s-2)*(s-4)); % stable
%figure;rlocus(G12);grid minor;
G13 = 1/(s*(s+1)); 
a=-1;
C =(s+a)/s; %a varie (PI)
G13C=G13*C;
figure;rlocus(G13C);grid minor;
%G14 = 1/(s*(s+3));