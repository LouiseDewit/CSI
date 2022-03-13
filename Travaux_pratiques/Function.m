function [k] = Function(t)

tpara= 10;
touv= 3.2;
k(find(t< tpara))=2/11;
I=find(tpara <= t);
k(find(tpara <= t))= 10523/64- 5625/128.*t(I)+ 1286/333.*t(I).^2 -268/2415.*t(I).^3;
J= find(t < tpara + touv & t>tpara);
k(find(t < tpara + touv & t>tpara))= 10523/64- 5625/128.*t(J)+ 1286/333.*t(J).^2 -268/2415.*t(J).^3;
k(find( t >= tpara +touv)) = 2;


    
end

